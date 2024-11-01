import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/directions_model.dart';
import 'package:know_my_city/presentation/core/markers_list.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs/qrcode_dialog.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/presentation/core/directions_repository.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
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
    _signInBloc = sl<SignInBloc>();
    _mapStyle = _loadMapStyle();
    _loadCustomMarkerIcons();
    _initializeMarkers();
    _info = null; // This line can be removed as _info is now nullable
    /* _loadDirections(); */
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

  void _initializeMarkers() {
    _tranvia = Marker(
      markerId: const MarkerId('tranvia'),
      position: const LatLng(10.6564178133895,
          -71.59488684178918), // Ajusta la posición según sea necesario
      icon: _customIcons.isNotEmpty
          ? _customIcons[0]
          : BitmapDescriptor.defaultMarker,
    );

    _plaza = Marker(
      markerId: const MarkerId('plaza'),
      position: const LatLng(10.66623260705817,
          -71.60581323765165), // Ajusta la posición según sea necesario
      icon: _customIcons.length > 1
          ? _customIcons[1]
          : BitmapDescriptor.defaultMarker,
    );

    _casaCapitulacion = Marker(
      markerId: const MarkerId('casaCapitulacion'),
      position: const LatLng(10.64231896416391,
          -71.60783610049393), // Ajusta la posición según sea necesario
      icon: _customIcons.length > 2
          ? _customIcons[2]
          : BitmapDescriptor.defaultMarker,
    );

    _hospitalCentral = Marker(
      markerId: const MarkerId('hospitalCentral'),
      position: const LatLng(10.64214695401155,
          -71.60557377666612), // Ajusta la posición según sea necesario
      icon: _customIcons.length > 3
          ? _customIcons[3]
          : BitmapDescriptor.defaultMarker,
    );

    _quintaLuxor = Marker(
      markerId: const MarkerId('quintaLuxor'),
      position: const LatLng(10.666711923974145,
          -71.6317473478305), // Ajusta la posición según sea necesario
      icon: _customIcons.length > 4
          ? _customIcons[2]
          : BitmapDescriptor.defaultMarker,
    );

    setState(() {});
  }

  /*  Future<void> _loadDirections() async {
    final directions = await DirectionsRepository()
        .getDirections(origin: _tranvia.position, destination: _plaza.position, tranvia: _tranvia.position, plaza: _plaza.position);
    setState(() => _info = directions);
  } */

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
          'assets/$assetname.png',
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

  Future<void> _drawMultiplePolylines() async {
    try {
      final routes = [
        {'origin': _tranvia.position, 'destination': _plaza.position},
        {'origin': _plazaPosition, 'destination': _costaVerdePosition},
        {'origin': _costaVerdePosition, 'destination': _deliciasPlazaPosition},
      ];

      final directions =
          await DirectionsRepository().getDirections(routes: routes);

      setState(() {
        _polylines.clear();
        for (int i = 0; i < directions.length; i++) {
          _polylines.add(
            Polyline(
              polylineId: PolylineId('route_$i'),
              points: directions[i],
              color: Colors.green,
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

  @override
  Widget build(BuildContext context) {
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
  bool showInfoContainer = false;
  String selectedRouteTitle = '';
  String selectedRouteDescription = '';
  String selectedRouteImage = '';	
  String selectedRouteSchedule = '';
  String selectedRoutePrice = '';
  String selectedRouteDeparture = '';
  String selectedRoutePoints = '';

  void _showInfoContainer(String title, String description, String image, String schedule, String price, String departure, String points) {
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
  _mapaMessage(BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Container(
          padding: const EdgeInsets.all(8.0),
          height: 60,         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children: [
            const Icon(Icons.info, color: Colors.white, size: 24),
            const SizedBox(width: 20),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ruta ya seleccionada',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ),
                const Spacer(),
                Text(
                  'Ya has seleccionado esta ruta, si deseas cambiar de ruta, por favor, limpia la ruta actual',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ),
              ],
            ))
          ],),
        ),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        duration: const Duration(seconds: 4),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
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
              markers: {
                tranvia = Marker(
                  markerId:
                      const MarkerId('Tranvía de Maracaibo'),
                  position: const LatLng(
                      10.6564178133895, -71.59488684178918),
                  icon: widget.customIcons[0],
                  onTap: () {
                    /* goToLocation(
                  const LatLng(10.6564178133895, -71.59488684178918)
                ); */
                    widget.showCustomInfoWindow(
                        context,
                        'Tranvía de Maracaibo',
                        'Sede',
                        'Sede del tranvía de Maracaibo, punto de salida para las rutas del Tranvía, ¡Descubre nuestras rutas en el menú lateral!',
                        'tranvia'); //MUESTRA EL INFOWINDOW CON CLICK
                  },
                ),
                plaza = Marker(
                  markerId:
                      const MarkerId('Plaza de la Republica'),
                  position: const LatLng(
                      10.66623260705817, -71.60581323765165),
                  icon: widget.customIcons[1],
                  onTap: () {
                    /* goToLocation(
                  const LatLng(10.665841201331798, -71.60603111374822)
                ); */
                    widget.showCustomInfoWindow(
                        context,
                        'Plaza de la República',
                        'Ruta de la Alegría',
                        'La plaza de la República es una de las principales plazas de la ciudad de Maracaibo, está ubicada en la calle 5 de Julio, un importante bulevar de Maracaibo, que lleva el nombre de la fecha de la independencia de Venezuela.',
                        'plaza');
                    /* showCustomInfoWindow(context, 'Tranvía de Maracaibo', 'Sede del tranvía de Maracaibo'); */ //MUESTRA EL INFOWINDOW CON CLICK
                  },
                ),
                hospitalCentral = Marker(
                  markerId: const MarkerId('Hospital Central'),
                  position: const LatLng(
                      10.64214695401155, -71.60557377666612),
                  icon: widget.customIcons[3],
                  onTap: () {
                    /* goToLocation(
                  const LatLng(10.64214695401155, -71.60557377666612)
                ); */
                    widget.showCustomInfoWindow(
                        context,
                        'Hospital Central',
                        'Ruta del Terror',
                        'El Hospital Central de Maracaibo es uno de los centros de salud más antiguos de la ciudad de Maracaibo. Fue la sede del primer hospital de la ciudad creado como la "Casa de Beneficencia" pero también recibió el nombre de Hospital de Santa Ana, siendo inaugurado el 26 de julio de 1608.',
                        'central');
                    /* showCustomInfoWindow(context, 'Tranvía de Maracaibo', 'Sede del tranvía de Maracaibo'); */ //MUESTRA EL INFOWINDOW CON CLICK
                  },
                ),
                casaCapitulacion = Marker(
                  markerId:
                      const MarkerId('Casa de la Capitulación'),
                  position: const LatLng(
                      10.64231896416391, -71.60783610049393),
                  icon: widget.customIcons[2],
                  onTap: () {
                    widget.goToLocation(const LatLng(
                        10.64231896416391, -71.60783610049393));
                    /* showCustomInfoWindow(context, 'Tranvía de Maracaibo', 'Sede del tranvía de Maracaibo'); */ //MUESTRA EL INFOWINDOW CON CLICK
                  },
                ),
                quintaLuxor = Marker(
                  markerId: const MarkerId('Quinta Luxor'),
                  position: const LatLng(
                      10.666711923974145, -71.6317473478305),
                  icon: widget.customIcons[2],
                  onTap: () {
                    widget.goToLocation(const LatLng(
                        10.666711923974145, -71.6317473478305));
                    /* showCustomInfoWindow(context, 'Tranvía de Maracaibo', 'Sede del tranvía de Maracaibo'); */ //MUESTRA EL INFOWINDOW CON CLICK
                  },
                ),
              },
              polylines: widget.polylines,
              style: widget.mapStyle,              
              minMaxZoomPreference: const MinMaxZoomPreference(13, 17),  
              zoomGesturesEnabled: false,                          
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                          onPressed: () {},
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
                          onPressed: () {},
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
              )
            ),
            // ListView flotante sobre el mapa
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              top: MediaQuery.of(context).size.height * 0.30,
              left: 15,
              right: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Container(
                color: Colors.transparent,
              )              
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.height * 0.5,
              left: showInfoContainer ? -400.0 : 15,              
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), // Aplica bordes al contenido
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        color: ThemeCore.primaryColor,
                        child: Text(
                          'RUTAS',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                            color: Colors.white,                            
                            fontSize: 24,
                            letterSpacing: 1.5,
                            ), 
                          ) 
                        ),
                      ),
                      ExpansionTile(
                        title: Text(
                          'Tranvía',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                            color: Colors.black,                            
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            ), 
                          ) ,
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Ruta de la Alegría',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                color: Colors.black,                            
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                ), 
                              ) ,
                            ),
                            subtitle: Text(
                              'Disfruta de la ciudad por la noche',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                color: Colors.grey[600],                            
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                ), 
                              ),
                            ),                            
                            onTap: () {
                              if (rutaActiva == '1') {
                                _mapaMessage(context);
                              } else {
                                _showInfoContainer('Ruta de la Alegría', 'La Ruta de la Alegría sale de la estación central del Tranvía, en la Vereda del Lago, recorrido fiestero y cervecero que visita 3 establecimientos que varían en cada salida, su duración es entre 2 horas y media y 3 aproximadamente.', 
                                'ruta_alegria', 
                                'Viernes y Sábados', 
                                '\$15 por persona', 
                                '7:00 PM', 
                                'Parada fija A Que Luis, demás paradas fijas varían dependiendo disponibilidad');
                                widget.drawPolylines();
                                widget.seleccionarRuta('Ruta de la Alegría');
                                widget.goToCenter(widget.center);     
                                setState(() {
                                rutaActiva = '1';
                              });                        
                              }                              
                            }
                          ),
                          ListTile(
                            title: Text(
                              'Ruta Colonial',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                color: Colors.black,                            
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                ), 
                              ),
                            ),
                            subtitle: Text(
                              'Recorrido por el centro histórico',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                color: Colors.grey[600],                            
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                ), 
                              ),
                            ),
                            onTap: () {
                              widget.drawTerrorRoute();
                              widget.seleccionarRuta('Ruta del Terror');
                              widget.goToCenter(widget.center);
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Ruta Gastronómica',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                color: Colors.black,                            
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                ), 
                              ),
                            ),
                            subtitle: Text(
                              'Tequeyoyos, empanadas, arepas',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                color: Colors.grey[600],                            
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                ), 
                              ),
                            ),
                              onTap: () {
                              // Acción para esta ruta
                              },
                            ),
                          ],
                        ),
                        ExpansionTile(
                        title: Text(
                          'Fomutur',
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                            color: Colors.black,                            
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            ), 
                          ) ,
                        ),
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Vivelo Maracaibo',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                color: Colors.black,                            
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                ), 
                              ) ,
                            ),
                            subtitle: Text(
                              'Paquetes turísticos para disfrutar la ciudad',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                color: Colors.grey[600],                            
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                ), 
                              ),
                            ),
                            onTap: () {
                              widget.drawPolylines();
                              widget.seleccionarRuta('Ruta de la Alegría');
                              widget.goToCenter(widget.center);
                            },
                          ),
                          ListTile(
                            title: Text(
                              'Caminata de Antaño',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                color: Colors.black,                            
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                ), 
                              ),
                            ),
                            subtitle: Text(
                              'Recorrido por el centro histórico',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                color: Colors.grey[600],                            
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                ), 
                              ),
                            ),
                            onTap: () {
                              widget.drawTerrorRoute();
                              widget.seleccionarRuta('Ruta del Terror');
                              widget.goToCenter(widget.center);
                            },
                          ),
                          /* ListTile(
                            title: Text(
                              'Ruta Lacustre',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                color: Colors.black,                            
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                ), 
                              ),
                            ),
                            subtitle: Text(
                              '',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                color: Colors.grey[600],                            
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                ), 
                              ),
                            ),
                              onTap: () {
                              // Acción para esta ruta
                              },
                            ), */
                          ],
                        ),
                        // Más rutas y botones
                      ],
                    ),
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
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              top: MediaQuery.of(context).size.height * 0.15,
              left: showInfoContainer ? 15.0 : -525.0,
              width: 475.0,
              height: MediaQuery.of(context).size.height * 0.80,
              child: Material(
                elevation: 6,
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
                      // Imagen de cabecera
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          image: DecorationImage(
                            image: AssetImage('assets/images/banner/tranvia.jpeg'), // Ajusta la imagen aquí
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

                      // Descripción breve
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

                      // Información de días y horarios
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _InfoRow(
                              icon: Icons.calendar_today,
                              title: 'Días Disponibles',
                              content: selectedRouteSchedule // Aquí va la información dinámica
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
                          ],
                        ),
                      ),                      
                    const Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                          child: IconButton(
                            icon: const Icon(Icons.close, color: Colors.grey),
                            onPressed: () {
                              setState(() {
                                showInfoContainer = false;
                                widget.limpiarRuta(widget.polylines);
                                rutaActiva = '';
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
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