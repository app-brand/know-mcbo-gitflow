import 'dart:convert';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/directions_model.dart';
import 'package:know_my_city/presentation/core/marker_model.dart';
import 'package:know_my_city/presentation/core/markers_list.dart';
import 'package:know_my_city/presentation/core/state_core.dart';
import 'package:know_my_city/presentation/core/tab_core.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs/qrcode_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/presentation/core/directions_repository.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  late StateCore stateCore;
  late Set<Marker> markersFirestore;
  late Marker marker;
  List<BitmapDescriptor> _customIcons = [];
  late GoogleMapController _mapController;
  late Marker _tranvia;
  late Marker _plaza;
  late Marker _casaCapitulacion;
  late Marker _hospitalCentral;
  late Marker _quintaLuxor;
  Directions? _info;
  Set<Polyline> _polylines = {};
  bool rutaSeleccionada = false;
  String rutaQR = '';
  String rutaActiva = '';
  Set<Marker> _markers = {};

/*   @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  } */

  late Future<String> _mapStyle;

  final LatLng _center = const LatLng(10.681102549093303, -71.62227169480072);
  final LatLng _tranviaPosition =
      const LatLng(10.6564178133895, -71.59488684178918);
  final LatLng _plazaPosition =
      const LatLng(10.66623260705817, -71.60581323765165);
  final LatLng _costaVerdePosition =
      const LatLng(10.678566872849304, -71.60681026461249);
  final LatLng _deliciasPlazaPosition =
      const LatLng(10.685911973418046, -71.62544140660783);
  final LatLng _casaCapitulacionPosition =
      const LatLng(10.64231896416391, -71.60783610049393);
  final LatLng _quintaLuxorPosition =
      const LatLng(10.666711923974145, -71.6317473478305);
  final LatLng _hospitalCentralPosition =
      const LatLng(10.64214695401155, -71.60557377666612);

  late SignInBloc _signInBloc;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showWelcomeDialog();
      stateCore = Provider.of<StateCore>(context, listen: false);
      stateCore.checkMarker();
    });
    _signInBloc = sl<SignInBloc>();
    _mapStyle = _loadMapStyle();
    _loadCustomMarkerIcons();
    /* _initializeMarkers(); */
    _info = null; // This line can be removed as _info is now nullable
    /* _loadDirections(); */
    _initializeMarkers();
    _loadMarkersFromJson();       
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /* if (!_initialized) {
      // Accede a Provider después de que se hayan configurado las dependencias
      // y el arbol de widget de go_router este instanciado.
      Future.delayed(Duration.zero, () {
        final stateCore = Provider.of<StateCore>(context, listen: false);
        stateCore.incrementCounter();
        print('map - contador de saltos o creaciones ${stateCore.counter}');
        print('Usuario registrado es: ${stateCore.isLoading}');
      });
      _initialized = true; // Evita ejecutar este bloque múltiples veces }*/
    _info = null;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      stateCore = Provider.of<StateCore>(context, listen: false);
      stateCore.incrementCounter();
      stateCore.checkUserState();
      stateCore.checkMarker();
      print('home - contador de saltos o creaciones ${stateCore.counter}');
    });
  }

  Future<void> _initializeMarkers() async {
    // Carga el archivo JSON
    final String jsonString = await rootBundle.loadString('assets/json/markers.json');
    final List<dynamic> jsonData = json.decode(jsonString);

    // Limpia el Set de marcadores para evitar duplicados
    _markers.clear();

    // Itera a través de cada entrada en el JSON y crea un marcador
    for (var item in jsonData) {
      final String markerId = item['markerId'];
      final double latitude = item['latitude'];
      final double longitude = item['longitude'];
      final int iconIndex = item['iconIndex'];

      final marker = Marker(
        markerId: MarkerId(markerId),
        position: LatLng(latitude, longitude),
        icon: _customIcons.length > iconIndex
            ? _customIcons[iconIndex]
            : BitmapDescriptor.defaultMarker,
      );

      // Agrega el marcador al Set
      _markers.add(marker);
    }

    // Actualiza el estado para reflejar los cambios en la UI
    setState(() {});
  }

  void _showWelcomeDialog() {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.8), // Fondo oscuro
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 600,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              // Header image
              Container(
                height: MediaQuery.of(context).size.height * 0.30,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/banner/529.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // Title
              RichText(
                text: TextSpan(
                  text: 'Bienvenido, ¿Estás listo para conocer',
                  style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.greenSecondary,
                ),      
                children: [
                  TextSpan(
                    text: ' Maracaibo',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: AppTheme.accentColor,
                    ),
                  ),
                  TextSpan(
                    text: '?',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: AppTheme.greenSecondary,
                    ),
                  ),
                ],          
                )                
              ),
              const SizedBox(height: 15),
              // Instruction text with icons
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInstructionRow(
                        Icons.house,
                        'Cada marcador en el mapa representa una parada de alguna ruta, al hacer click en ellos consigues mas información.',
                      ),
                      const SizedBox(height: 8),
                      _buildInstructionRow(
                        Icons.list_alt,
                        'La lista de rutas a la izquierda te permite seleccionar una ruta y ver su recorrido.',
                      ),
                      const SizedBox(height: 8),
                      _buildInstructionRow(
                        Icons.my_location,
                        'Te permite centrar el mapa al punto inicial.',
                      ),
                      const SizedBox(height: 8),
                      _buildInstructionRow(
                        Icons.clear_rounded,
                        'Te permite limpiar la ruta que esta dibujada.',
                      ),
                      const SizedBox(height: 8),
                      _buildInstructionRow(
                        Icons.book_online,
                        'Utiliza este botón para reservar luego de seleccionar una ruta.',
                      ),
                      const SizedBox(height: 8),
                      _buildInstructionRow(
                        Icons.rate_review,
                        'Si ya visitaste una de nuestras rutas, ¡nos encantaría que la califiques y dejes un comentario!',
                      ),
                      const SizedBox(height: 8),
                      _buildInstructionRow(
                        Icons.help_outline,
                        'Lee las preguntas frecuentes para aclarar tus dudas.',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              // "Entendido" button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Entendido',
                    style: GoogleFonts.montserrat(
                      color: AppTheme.greenAlcaldia,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

  Widget _buildInstructionRow(IconData icon, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: AppTheme.greenAlcaldia, size: 24),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _loadCustomMarkerIcons() async {
    for (String path in markerIconPaths) {
      BitmapDescriptor icon = await BitmapDescriptor.asset(
        const ImageConfiguration(size: Size(40, 45)),
        path,
      );
      _customIcons.add(icon);
    }
    setState(() {});    
  }

  Future<void> _loadMarkersFromJson() async {
    final String response = await rootBundle.loadString('assets/json/markers.json');
    final List<dynamic> data = json.decode(response);

    Set<Marker> markers = data.map((item) {
      final markerData = MarkerData.fromJson(item);
      return Marker(
        markerId: MarkerId(markerData.id),
        position: LatLng(markerData.latitude, markerData.longitude),
        icon: _customIcons.length > markerData.iconIndex
            ? _customIcons[markerData.iconIndex]
            : BitmapDescriptor.defaultMarker,
        onTap: () {
          _showCustomInfoWindow(context, markerData.id, markerData.id, markerData.name, markerData.name);
        }            
      );
    }).toSet();

    setState(() {
      _markers = markers;
    });
  }

  Future<String> _loadMapStyle() async {
    return await rootBundle.loadString('lib/presentation/core/map_style.json');
  }

  void _goToLocation(LatLng position) {
    if (_mapController != null) {
      _mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: position,
            zoom: 18.0,
          ),
        ),
      );
    }
  }

  void _goToCenter(LatLng position) {
    if (_mapController != null) {
      _mapController.animateCamera(
        CameraUpdate.newCameraPosition(CameraPosition(
          target: _center,
          zoom: 13,
        )),
      );
    }
  }

  void _reservaTranvia(String ruta) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return QRCodeGenerator(ruta: rutaQR);
      },
    );
  }

  void _seleccionarRuta(String nombreRuta) {
    setState(() {
      rutaSeleccionada = true;
      rutaQR = nombreRuta;
    });
  }

  void _limpiarRuta(Set<Polyline> polylines) {
    setState(() {
      polylines.clear();
      rutaSeleccionada = false;
    });
  }

  void _showCustomInfoWindow(BuildContext context, String title, String ruta,
      String snippet, String assetname) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.noHeader,
      animType: AnimType.bottomSlide,
      customHeader: ClipOval(
        child: Image.asset(
          'assets/images/banner/$assetname.jpeg',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
      title: title,
      titleTextStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        fontFamily: 'alcaldia_fonts',
      ),
      descTextStyle: const TextStyle(
        fontSize: 16,
        fontFamily: 'alcaldia_fonts',
      ),
      desc: ruta.substring(0, 4).toLowerCase() == 'ruta'
          ? '$snippet\n\n Visita este lugar en las siguientes rutas: $ruta'
          : snippet,
      width: MediaQuery.of(context).size.width * 0.4,
      padding: const EdgeInsets.all(24),
      headerAnimationLoop: false,
      showCloseIcon: true,
      /* btnCancelText: 'Cerrar',
      btnCancelOnPress: () {},
      btnOkText: 'Dibujar Ruta',
      btnOkOnPress: () {    
        if (ruta == 'Ruta de la Alegría') {
          _drawMultiplePolylines();
        } else if (ruta == 'Ruta del Terror') {
        _drawTerrorRoute();
        }        
      }, */
    ).show();
  }

  /* Future<void> _drawPolylines() async {
    try {
      final directions = await DirectionsRepository().getDirections(
        origin: _tranvia.position,
        destination: _plaza.position,
      );

      if (directions != null) {
        setState(() {
          _polylines.add(
            Polyline(
              polylineId: PolylineId('ruta_alegria'),
              points: directions,
              color: const Color.fromARGB(255, 54, 209, 59),
              width: 5,
            ),
          );
        });

        print('Polylines drawn: $_polylines'); // Agrega este print para verificar las polylines dibujadas
      }
    } catch (e) {
      print('Error drawing polylines: $e');
    }
  } */

  Future<void> _drawTerrorRoute() async {
    try {
      final routes = [
        {'origin': _tranviaPosition, 'destination': _hospitalCentralPosition},
        {
          'origin': _hospitalCentralPosition,
          'destination': _casaCapitulacionPosition
        },
        {
          'origin': _casaCapitulacionPosition,
          'destination': _quintaLuxorPosition
        },
      ];

      final directions = await DirectionsRepository().getDirections(
        routes: routes,
      );

      setState(() {
        _polylines.clear();
        for (int i = 0; i < directions.length; i++) {
          _polylines.add(
            Polyline(
              polylineId: PolylineId('terror_route_$i'),
              points: directions[i],
              color: const Color.fromARGB(
                  255, 249, 26, 10), // Color para la ruta del terror
              width: 5,
            ),
          );
        }
      });

      /* print('Polylines drawn: $_polylines'); */ // Agrega este print para verificar las polylines dibujadas
    } catch (e) {
      print('Error drawing polylines: $e');
    }
  }

  Future<void> _drawMultiplePolylines(String routeNumber) async {
  try {
    // Construir la ruta del archivo JSON basado en el número de ruta
    final String jsonFilePath = 'assets/json/routes$routeNumber.json';
    
    // Cargar el archivo JSON
    final String jsonString = await rootBundle.loadString(jsonFilePath);
    final List<dynamic> jsonData = json.decode(jsonString);

    // Construir la lista de rutas desde el JSON
    final List<Map<String, LatLng>> routes = jsonData.map((item) {
      final originLatLng = LatLng(item['origin']['latitude'], item['origin']['longitude']);
      final destinationLatLng = LatLng(item['destination']['latitude'], item['destination']['longitude']);
      return {
        'origin': originLatLng,
        'destination': destinationLatLng,
      };
    }).toList();

    // Obtener direcciones para cada ruta
    final directions = await DirectionsRepository().getDirections(routes: routes);

    // Actualizar las polilíneas en el mapa
    setState(() {
      _polylines.clear();
      for (int i = 0; i < directions.length; i++) {
        _polylines.add(
          Polyline(
            polylineId: PolylineId('route_${routeNumber}_$i'),
            points: directions[i],
            color: Colors.green,
            width: 5,
          ),
        );
      }
    });

  } catch (e) {
    print('Error drawing polylines: $e');
  }
}


  @override
  Widget build(BuildContext context) {
    /* stateCore = Provider.of<StateCore>(context);
    stateCore.incrementCounter();
    print('map - contador de saltos o creaciones ${stateCore.counter}');
    print('Usuario registrado es: ${stateCore.isLoading}'); */
    return BlocBuilder<SignInBloc, SignInState>(
      bloc: _signInBloc,
      builder: (context, state) {
        if (state.isSubmitting) {
          return Center(child: CircularProgressIndicator());
        } else {
          return FutureBuilder<String>(
            future: _mapStyle,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error loading map style'));
              } else {
                return MainMaps(
                    polylines: _polylines,                    
                    signInBloc: _signInBloc,
                    center: _center,
                    mapStyle: snapshot.data!,
                    customIcons: _customIcons,
                    goToLocation: _goToLocation,
                    goToCenter: _goToCenter,
                    drawTerrorRoute: _drawTerrorRoute,
                    drawPolylines: _drawMultiplePolylines,
                    info: _info,
                    markers: _markers,
                    showCustomInfoWindow:                    
                        (context, title, ruta, snippet, assetname) =>
                            _showCustomInfoWindow(
                                context, title, ruta, snippet, assetname),
                    reservaTranvia: _reservaTranvia,
                    seleccionarRuta: _seleccionarRuta,
                    limpiarRuta: _limpiarRuta,
                    rutaSeleccionada: rutaSeleccionada,
                    onMapCreated: (controller) {
                      _mapController = controller;
                      // ignore: deprecated_member_use
                      _mapController.setMapStyle(snapshot.data!);
                    });
              }
            },
          );
        }
      },
    );
  }
}

class MainMaps extends StatefulWidget {
  MainMaps({
    super.key,
    required this.info,
    required this.signInBloc,
    required this.center,
    required this.mapStyle,
    required this.customIcons,
    required this.goToLocation,
    required this.goToCenter,
    required this.drawTerrorRoute,
    required this.drawPolylines,
    required this.onMapCreated,
    required this.showCustomInfoWindow,
    required this.polylines,
    required this.reservaTranvia,
    required this.seleccionarRuta,
    required this.limpiarRuta,
    required this.rutaSeleccionada,
    required this.markers,
  });

  final SignInBloc signInBloc;
  final Set<Polyline> polylines;
  final LatLng center;
  final String mapStyle;
  final Directions? info; // Make the info parameter nullable
  final List<BitmapDescriptor> customIcons;
  final Function drawTerrorRoute;
  final Function drawPolylines;
  final Function(String) seleccionarRuta;
  final Function limpiarRuta;
  final Function reservaTranvia;
  final Function(LatLng) goToLocation;
  final Function(LatLng) goToCenter;
  final Function(GoogleMapController) onMapCreated;
  final void Function(BuildContext, String, String, String, String)
      showCustomInfoWindow;
  final bool rutaSeleccionada;
  final Set<Marker> markers;
  late StateCore stateCore;

  @override
  State<MainMaps> createState() => _MainMapsState();
}

class _MainMapsState extends State<MainMaps> {
  late Marker casaCapitulacion;
  late Marker quintaLuxor;
  late Marker hospitalCentral;
  late Marker tranvia;
  late Marker plaza;
  late String rutaActiva = '';
  bool showRouteList = false;
  String selectedRoute = "RUTAS";
  bool showInfoContainer = false;
  String selectedRouteTitle = '';
  String selectedRouteDescription = '';
  String selectedRouteImage = '';
  String selectedRouteSchedule = '';
  String selectedRoutePrice = '';
  String selectedRouteDeparture = '';
  String selectedRoutePoints = '';
  late StateCore stateCore;
  late Set<Marker> markersFirestore;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      stateCore = Provider.of<StateCore>(context, listen: false);
      stateCore.checkMarker();
    });
  }

  List<Widget> _buildRouteList(String routeType) {
    if (routeType == 'Tranvía') {
      return [
        _buildRouteTile('Ruta de la Alegría', 'Disfruta de la ciudad por la noche', '1'),
        _buildRouteTile('Ruta Patrimonial', 'Recorrido por el centro histórico', '2'),
        _buildRouteTile('Ruta Palafitos', 'Visita Santa Rosa de Agua, el mirador y un paseo lacustre', '3'),
      ];
    } else if (routeType == 'Fomutur') {
      return [
        _buildRouteTile('Vivelo Maracaibo', 'Paquetes turísticos para disfrutar la ciudad', '4'),
        _buildRouteTile('Caminata de Antaño', 'Recorrido a pie por el centro histórico', '5'),
      ];
    } else if (routeType == 'Maracaibo') {
      return [
        _buildMarkerTile('Tranvía de Maracaibo', '6'),
        _buildMarkerTile('A que Luis', '7'),
        _buildMarkerTile('FOMUTUR', '8'),
        _buildMarkerTile('Hospital Central', '9'),
        _buildMarkerTile('Mercado San Sebastián', '10'),
        _buildMarkerTile('Mirador del Sol', '11'),
        _buildMarkerTile('Monumento a la Chinita', '12'),
        _buildMarkerTile('Palacio Legislativo', '13'),
        _buildMarkerTile('Plaza de la República', '14'),
        _buildMarkerTile('Santa Rosa de Aguas', '15'),
        _buildMarkerTile('La Vereda del Lago', '16'),
        _buildMarkerTile('Teatro Baralt', '17'),
      ];
    }
    return [];
  }

  // Método para construir cada elemento de la lista de sub-rutas
  Widget _buildRouteTile(String title, String subtitle, String routeId) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      onTap: () {
        if (rutaActiva == routeId) {
          _mapaMessage(context);
        } else if (routeId == '6' || routeId == '7' || routeId == '8' || routeId == '9' || routeId == '10' || routeId == '11' || routeId == '12' || routeId == '13' || routeId == '14' || routeId == '15' || routeId == '16' || routeId == '17') {
          displayMarkerInfoDialog(int.parse(routeId));
        } else if(routeId == '4') {
          _showViveloMaracaiboDialog();
        }          
         else {
          displayRouteInfoCard(int.parse(routeId));
          widget.drawPolylines(routeId);            
          widget.goToCenter(widget.center);
          setState(() {
            rutaActiva = routeId;
          });
        };
      },
    );
  }

  Widget _buildMarkerTile(String title, String routeId) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.poppins(
          textStyle: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      onTap: () { 
        displayMarkerInfoDialog(int.parse(routeId));
      },
    );
  }

  void displayMarkerInfoDialog(int routeId) async {
  try {
    // Cargar y decodificar el JSON
    final String response = await rootBundle.loadString('assets/json/markers_info.json');
    final List<dynamic> markersData = json.decode(response);

    // Convertir a una lista de mapas para trabajar con ellos
    final List<Map<String, dynamic>> markers = List<Map<String, dynamic>>.from(markersData);

    // Buscar el marcador por `id`
    final markerData = markers.firstWhere(
      (marker) => marker["id"] == routeId,
      orElse: () => {},
    );

    // Verificar si el marcador existe y mostrar el diálogo
    if (markerData.isNotEmpty) {
      showDialog(
        context: context,
        barrierDismissible: false, // Evita que el diálogo se cierre al hacer clic fuera
        builder: (context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 500, // Limita el ancho del diálogo
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título del lugar
                    Text(
                      markerData["name"] ?? "Nombre no disponible",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    // Descripción del lugar
                    Text(
                      markerData["description"] ?? "Descripción no disponible",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Disponibilidad
                    Text(
                      markerData["available"] == true
                          ? "Disponible para visitas"
                          : "No disponible para visitas",
                      style: TextStyle(
                        fontSize: 14,
                        color: markerData["available"] == true ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Ruta (solo si está disponible)
                    if (markerData["available"] == true && markerData["route"] != null)
                      Text(
                        "Ruta: ${markerData["route"]}",
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    const SizedBox(height: 24),
                    // Botón de cierre
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Cierra el diálogo
                      },
                      child: const Text(
                        'Cerrar',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );


    } else {
      print("Marcador con ID $routeId no encontrado.");
    }
  } catch (e) {
    print("Error al cargar la información del marcador: $e");
  }
}

  void displayRouteInfoCard(int routeId) async {
    try {
      // Cargar y decodificar el JSON
      final String response = await rootBundle.loadString('assets/json/routes_info.json');
      final List<dynamic> routesData = json.decode(response);

      // Convertir a una lista de mapas para trabajar con ellos
      final List<Map<String, dynamic>> routes = List<Map<String, dynamic>>.from(routesData);

      // Buscar la ruta por `routeId`
      final routeData = routes.firstWhere(
        (route) => route["id"] == routeId,
        orElse: () => {},
      );

      // Verificar si la ruta existe y actualizar la UI
      if (routeData != null) {
        setState(() {
          selectedRouteTitle = routeData["title"] ?? "";
          selectedRouteDescription = routeData["description"] ?? "";
          selectedRouteImage = routeData["image"] ?? "";
          selectedRouteSchedule = routeData["schedule"] ?? "";
          selectedRoutePrice = routeData["price"] ?? "";
          selectedRouteDeparture = routeData["departure"] ?? "";
          selectedRoutePoints = routeData["points"] ?? "";
          showInfoContainer = true;
        });
      } else {
        print("Ruta con ID $routeId no encontrada.");
      }
    } catch (e) {
      print("Error al cargar la información de la ruta: $e");
    }
  }

  void _showInfoContainer(String title, String description, String image,
      String schedule, String price, String departure, String points) {
    setState(() {
      selectedRouteTitle = title;
      selectedRouteDescription = description;
      selectedRouteImage = image;
      selectedRouteSchedule = schedule;
      selectedRoutePrice = price;
      selectedRouteDeparture = departure;
      selectedRoutePoints = points;
      showInfoContainer = true;
    });
  }

  void _showRatingDialog(BuildContext context) {
  String? selectedRoute;
  String comment = '';
  int rating = 0;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("¿Has visitado alguna de nuestras rutas?"),
        content: Container(
          width: 300.0,  // Ancho fijo para el diálogo
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Si ya visitaste una de nuestras rutas, ¡nos encantaría que la califiques y dejes un comentario!",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              // Selector de ruta (Dropdown)
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: "Selecciona una ruta"),
                items: const [
                  DropdownMenuItem(value: "Ruta de la Alegría", child: Text("Ruta de la Alegría")),
                  DropdownMenuItem(value: "Ruta Patrimonial", child: Text("Ruta Patrimonial")),
                  DropdownMenuItem(value: "Ruta Palafitos", child: Text("Ruta Palafitos")),
                  DropdownMenuItem(value: "Vivelo Maracaibo", child: Text("Vivelo Maracaibo")),
                  DropdownMenuItem(value: "Caminata de Antaño", child: Text("Caminata de Antaño")),
                ],
                onChanged: (value) {
                  selectedRoute = value;
                },
                value: selectedRoute,
              ),
              const SizedBox(height: 16),

              // Cuadro de texto para el comentario
              TextFormField(
                decoration: const InputDecoration(labelText: "Deja un comentario"),
                maxLines: 3,
                onChanged: (value) {
                  comment = value;
                },
              ),
              const SizedBox(height: 16),

              // Control de calificación en estrellas
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      Icons.star,
                      color: index < rating ? Colors.amber : Colors.grey,
                    ),
                    onPressed: () {
                      rating = index + 1;
                      (context as Element).markNeedsBuild();  // Actualizar el diálogo
                    },
                  );
                }),
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancelar"),
          ),
          TextButton(
            onPressed: () {
              // Validación de entrada antes de enviar
              if (selectedRoute != null && rating > 0) {
                print("Ruta seleccionada: $selectedRoute");
                print("Comentario: $comment");
                print("Calificación: $rating estrellas");

                // Cerrar el diálogo de calificación
                Navigator.of(context).pop();

                // Mostrar el diálogo de éxito con `AwesomeDialog`
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('¡Gracias!'),
                      content: const Text('Tu calificación ha sido enviada exitosamente.'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cerrar'),
                        ),
                      ],
                    );
                  },
                );

              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Selecciona una ruta y una calificación")),
                );
              }
            },
            child: const Text("Enviar"),
          ),
        ],
      );
    },
  );
}

void _showViveloMaracaiboDialog() {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.8), // Fondo oscuro
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 600,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              // Header image
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/banner/maracaibo.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // Title
              RichText(
                text: TextSpan(
                  text: 'Vívelo Maracaibo',
                  style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.accentColor,
                  ),
                  children: [
                    TextSpan(
                      text: ' - Paquete Turístico',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w300,
                        fontSize: 18,
                        color: AppTheme.greenSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Disfruta de una experiencia única en Maracaibo con este itinerario de 3 días, diseñado para que explores la ciudad y sus alrededores.',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 16),
              // Itinerary description
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDayRow(Icons.calendar_today, 'Día 1: Llegada y Recorrido',
                          'Llegada al Aeropuerto o Terminal - Check-in en Hotel Oceanía. '
                          'Recorrido por Parque la Marina, Villa Carmen, Plaza de la República y Santa Lucía. '
                          'Almuerzo en el Restaurante Culpa - Regreso al Hotel.'),
                      const SizedBox(height: 10),
                      _buildDayRow(Icons.calendar_today, 'Día 2: Ruta Lacustre y Patrimonial',
                          'Visita a Santa Rosa y ruta lacustre - Regreso al Hotel Oceanía. '
                          'Recorrido por la Sede del Tranvía y Ruta Patrimonial en el casco central. '
                          'Visita a la Vereda del Lago y al restaurante Dystopia - Cena en Mi Ternerita.'),
                      const SizedBox(height: 10),
                      _buildDayRow(Icons.calendar_today, 'Día 3: Despedida',
                          'Desayuno en el Hotel Oceanía - Traslado de regreso al Terminal o Aeropuerto.'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
              // "Entendido" button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Entendido',
                    style: GoogleFonts.montserrat(
                      color: AppTheme.greenAlcaldia,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

// Helper function to build each day row
Widget _buildDayRow(IconData icon, String title, String description) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(icon, color: AppTheme.accentColor, size: 20),
      const SizedBox(width: 8),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppTheme.greenAlcaldia,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              description,
              style: GoogleFonts.montserrat(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}


void _showFAQDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          "Preguntas Frecuentes",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.4,  // Ancho fijo para mantener el diseño minimalista
          child: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Pregunta 1
                ExpansionTile(
                  title: const Text(
                    "¿Cómo puedo reservar una ruta turística?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Puedes reservar una ruta directamente a través de nuestra aplicación o página web, seleccionando la ruta de tu preferencia y posteriormente llenando el formulario.",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                
                // Pregunta 2
                ExpansionTile(
                  title: const Text(
                    "¿Puedo cancelar una reserva?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Sí, puedes cancelar una reserva con al menos 24 horas de antelación para recibir un reembolso completo. Las cancelaciones tardías pueden no ser reembolsables.",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                
                // Pregunta 3
                ExpansionTile(
                  title: const Text(
                    "¿Qué rutas están disponibles actualmente?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Actualmente ofrecemos rutas culturales, gastronómicas y de naturaleza. Puedes ver la lista completa en la sección de rutas en nuestra aplicación.",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                
                // Pregunta 4
                ExpansionTile(
                  title: const Text(
                    "¿Las rutas son guiadas?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Sí, todas nuestras rutas cuentan con guías certificados que te brindarán información interesante y asegurarán una experiencia completa.",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
                
                // Pregunta 5
                ExpansionTile(
                  title: const Text(
                    "¿Qué necesito llevar para una ruta?",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "Te recomendamos llevar ropa cómoda, agua, protector solar y cualquier otro artículo que consideres necesario dependiendo del clima.",
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cerrar", style: TextStyle(color: Colors.blue)),
          ),
        ],
      );
    },
  );
}



  _mapaMessage(BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
        padding: const EdgeInsets.all(8.0),
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const Icon(Icons.info, color: Colors.white, size: 24),
            const SizedBox(width: 20),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ruta ya seleccionada',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                const Spacer(),
                Text(
                    'Ya has seleccionado esta ruta, si deseas cambiar de ruta, por favor, limpia la ruta actual',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
              ],
            ))
          ],
        ),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      duration: const Duration(seconds: 4),
    ));
  }

  @override
  Widget build(BuildContext context) {    
    stateCore = Provider.of<StateCore>(context);
    markersFirestore = stateCore.markerList.cast<Marker>();
    print('markersFirestore: $markersFirestore');
    return Consumer<StateCore>(
      builder: (context, coreState, child) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double width = constraints.maxWidth;
            return Scaffold(
              body: Stack(
                children: [                           
                  GoogleMap(
                    onMapCreated: widget.onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: widget.center,
                      zoom: 13,
                    ),
                    markers: markersFirestore,
                    polylines: widget.polylines,
                    style: widget.mapStyle,
                    minMaxZoomPreference: const MinMaxZoomPreference(13, 17),
                    mapToolbarEnabled: false,

                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black.withOpacity(0.8),
                              Colors.transparent,
                            ],
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "images/banner/LOGOFOMUTURBLANCO.png",
                              width: 200,
                              height: 100,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    routerCore.push('/');
                                  },
                                  child: Text(
                                    'Inicio',
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Mapa de Turista',
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                TextButton(
                                  onPressed: () {
                                    routerCore.push('/aboutus');
                                  },
                                  child: Text(
                                    'Nosotros',
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                TextButton(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const SignInDialog();
                                      },
                                    );
                                  },
                                  child: Text(
                                    'Perfil',
                                    style: GoogleFonts.montserrat(
                                      textStyle: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),              
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    top: MediaQuery.of(context).size.height * 0.25,
                    left: showRouteList ? -400.0 : 15,
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6.0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          // Encabezado principal que cubre todo el ancho con bordes redondeados en la parte superior
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 50, // Altura más pequeña para el encabezado
                              color: AppTheme.greenAlcaldia,
                              alignment: Alignment.center,
                              child: Text(
                                'RUTAS',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20, // Tamaño de texto reducido
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Botón Tranvía
                          ListTile(
                            title: Text(
                              'Tranvía',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              setState(() {
                                selectedRoute = 'Tranvía';
                                showRouteList = true; // Muestra la lista de rutas de Tranvía
                              });
                            },
                          ),
                          // Botón Fomutur
                          ListTile(
                            title: Text(
                              'Fomutur',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              setState(() {
                                selectedRoute = 'Fomutur';
                                showRouteList = true; // Muestra la lista de rutas de Fomutur
                              });
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Conoce los sitios turísticos de Maracaibo',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              setState(() {
                                selectedRoute = 'Maracaibo';
                                showRouteList = true; // Muestra la lista de rutas de Fomutur
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // Segundo AnimatedPositioned: Lista de rutas específicas de la selección
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    top: MediaQuery.of(context).size.height * 0.25,
                    left: showRouteList ? 15 : -400.0,
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6.0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          // Encabezado con el nombre de la ruta seleccionada y botón de regreso con bordes redondeados en la parte superior
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: Container(
                              width: double.infinity,
                              height: 50, // Altura más pequeña para el encabezado
                              color: AppTheme.greenAlcaldia,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      selectedRoute,
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                                    onPressed: () {
                                      setState(() {
                                        showRouteList = false; // Regresa al menú principal
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              padding: EdgeInsets.zero,
                              children: _buildRouteList(selectedRoute),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),              
                  // Otros Positioned (botones, etc.)
                  Positioned(
                    bottom: 30.0,
                    right: 70.0,
                    height: 45,
                    width: 45,
                    child: FloatingActionButton(
                      backgroundColor: ThemeCore.primaryColor,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        widget.goToCenter(widget.center);
                      },
                      child: const Icon(Icons.my_location),
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    right: 140.0,
                    height: 45,
                    width: 45,
                    child: FloatingActionButton(
                      backgroundColor: ThemeCore.primaryColor,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        widget.limpiarRuta(widget.polylines);
                        setState(() {
                          rutaActiva = '';
                          showInfoContainer = false;
                        });
                      },
                      child: const Icon(Icons.clear_rounded),
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    right: 210.0,
                    height: 45,
                    width: 45,
                    child: FloatingActionButton(
                      backgroundColor: ThemeCore.primaryColor,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        _showRatingDialog(context);  // Llama al diálogo de calificación
                      },
                      child: const Icon(Icons.rate_review),
                    ),
                  ),
                  Positioned(
                    bottom: 30.0,
                    right: 280.0, // Ajusta la posición para que no se sobreponga con otros botones
                    height: 45,
                    width: 45,
                    child: FloatingActionButton(
                      backgroundColor: ThemeCore.primaryColor,
                      foregroundColor: Colors.white,
                      onPressed: () {
                        _showFAQDialog(context);  // Llama al diálogo de preguntas frecuentes
                      },
                      child: const Icon(Icons.help_outline),
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn,
                    top: MediaQuery.of(context).size.height * 0.20,
                    left: showInfoContainer ? 15.0 : -525.0,
                    width: 475.0,
                    height: MediaQuery.of(context).size.height * 0.70,
                    child: Material(
                      elevation: 6,
                      borderRadius: BorderRadius.circular(20.0),
                      child: Stack(
                        children: [
                          // Contenedor principal con el contenido
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6.0,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Imagen de cabecera fija
                                  if(selectedRoute == 'Fomutur')
                                  Container(
                                    height: 150,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),                                      
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/banner/puente4k2.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  if(selectedRoute == 'Tranvía') 
                                  Container(
                                    height: 150,
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),                                      
                                      image: DecorationImage(
                                        image: AssetImage('assets/images/banner/tranvia.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  
                                  // Título de la ruta
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      selectedRouteTitle,
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  
                                  // Descripción breve fija
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                    child: Text(
                                      selectedRouteDescription,
                                      style: GoogleFonts.poppins(
                                        textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black54,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  
                                  // Contenido desplazable
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            _InfoRow(
                                              icon: Icons.calendar_today,
                                              title: 'Días Disponibles',
                                              content: selectedRouteSchedule,
                                            ),
                                            const SizedBox(height: 8),
                                            _InfoRow(
                                              icon: Icons.access_time,
                                              title: 'Hora de salida',
                                              content: selectedRouteDeparture,
                                            ),
                                            const SizedBox(height: 8),
                                            _InfoRow(
                                              icon: Icons.attach_money,
                                              title: 'Costo',
                                              content: selectedRoutePrice,
                                            ),
                                            const SizedBox(height: 8),
                                            _InfoRow(
                                              icon: Icons.location_on,
                                              title: 'Paradas Principales',
                                              content: selectedRoutePoints,
                                            ),
                                            const SizedBox(height: 8),
                                            if (selectedRouteTitle == 'Ruta de la Alegría')
                                              const _InfoRow(
                                                icon: Icons.info,
                                                title: 'Advertencia',
                                                content: 'Esta ruta es para mayores de 18 años',
                                              ),
                                            const SizedBox(height: 12),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // Botón de cerrar en la esquina superior derecha
                          Positioned(
                            top: 8.0,
                            right: 8.0,
                            child: IconButton(
                              icon: const Icon(Icons.close, color: Colors.white),
                              onPressed: () {
                                setState(() {
                                  showInfoContainer = false;
                                  widget.limpiarRuta(widget.polylines);
                                  rutaActiva = '';
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (rutaActiva.isNotEmpty)
                  Positioned(
                    bottom: 20,
                    left: MediaQuery.of(context).size.width / 2 - 50, // Centrar el botón
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Confirmación de Reserva"),
                              content: Text("¿Deseas reservar para la $selectedRouteTitle?\nSe le redirigira a un formulario de registro."),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(); // Cierra el diálogo
                                  },
                                  child: const Text("Cancelar"),
                                ),
                                TextButton(
                                  onPressed: () async {
                                    final url = Uri.parse('https://docs.google.com/forms/d/e/1FAIpQLScrm0-3QN4SOuvP0FotDTqAJ83Xf1eKUqK9AQ9D4wEbKdoQcA/viewform?usp=sf_link');
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(url);
                                    } else {
                                      throw 'No se pudo abrir la URL: $url';
                                    }
                                    // Lógica de reserva
                                    Navigator.of(context).pop(); // Cierra el diálogo
                                  },
                                  child: const Text("Reservar"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      label: const Text('Reservar'),
                      icon: const Icon(Icons.book_online),
                      backgroundColor: ThemeCore.primaryColor,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }
    );
  }
}
class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const _InfoRow({
    required this.icon,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 20, color: Colors.grey[700]),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                content,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
