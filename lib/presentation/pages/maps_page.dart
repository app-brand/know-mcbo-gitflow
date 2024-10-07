import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sing_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs/login_dialog.dart';
import 'package:know_my_city/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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

/*   @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  } */

  late Future<String> _mapStyle;

  final LatLng _center = const LatLng(10.660844651881145, -71.59921476991683);


  late SignInBloc _signInBloc;
  @override
  void initState() {
    super.initState();
    _signInBloc = sl<SignInBloc>();
    _mapStyle = _loadMapStyle();
    _loadCustomMarkerIcons();
  }

Future<void> _loadCustomMarkerIcons() async {
    List<String> iconPaths = [
      'assets/tranvia.png',
      'assets/obelisco.png',
    ];

    for (String path in iconPaths) {
      BitmapDescriptor icon = await BitmapDescriptor.asset(
        const ImageConfiguration(size: Size(35, 35)),
        path,
      );
      _customIcons.add(icon);
    }

    setState(() {});
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
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: position,
          zoom: 15,
        )
      ),
    );
    }
  }

  void _showCustomInfoWindow(BuildContext context, String title, String snippet) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(title, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 8),
                Text(snippet),
                const SizedBox(height: 8),
                TextButton(
                  child: const Text('Cerrar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },	
                ),
              ],
            ),
          ),
        );
      },
   );         
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
                  signInBloc: _signInBloc,
                  center: _center, 
                  mapStyle: snapshot.data!,
                  customIcons: _customIcons,
                  goToLocation: _goToLocation, 
                  goToCenter: _goToCenter,
                  tranvia: _tranvia,
                  plaza: _plaza,
                  showCustomInfoWindow: _showCustomInfoWindow,
                  onMapCreated: (controller) {
                  _mapController = controller;
                    // ignore: deprecated_member_use
                  _mapController.setMapStyle(snapshot.data!);
                  }                  
                );
              }
            },
          );
        }
      },
    );
  }
}

class MainMaps extends StatelessWidget {
  const MainMaps({
    super.key,
    required this.tranvia,
    required this.plaza,
    required this.signInBloc,
    required this.center,
    required this.mapStyle,
    required this.customIcons,
    required this.goToLocation,
    required this.goToCenter,
    required this.onMapCreated,
    required this.showCustomInfoWindow,
  });

  final SignInBloc signInBloc;
  final LatLng center;
  final String mapStyle;
  Marker tranvia;
  Marker plaza;
  final List<BitmapDescriptor> customIcons;
  final Function(LatLng) goToLocation;
  final Function(LatLng) goToCenter;
  final Function(GoogleMapController) onMapCreated;
  final void Function(BuildContext, String, String) showCustomInfoWindow;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          SizedBox(            
            child: Center(
              child: IconButton(
                // investigar como hacer que esto aparezca hasta la izquierda padding: EdgeInsets.zero,
                onPressed: () {
                  context.go('/');
                },
                color: ThemeCore.primaryColor,
                icon: const Icon(Icons.home_filled),
              ),
            ),
          ),
          SizedBox(
            child: Center(
              child: IconButton(
                onPressed: () {
                  context.go('/maps');
                },
                color: ThemeCore.primaryColor,
                icon: const Icon(Icons.map_outlined),
              )
            )
          ),
          SizedBox(
            child: Center(
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return LoginDialog();
                    },
                  );
                },
                color: ThemeCore.primaryColor,
                icon: const Icon(Icons.person),
              ),
            ),
          ),                    
        ],  
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: ThemeCore.primaryColor,
              ),
              child: Text(
                'Rutas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ExpansionTile(
                title: Text('Rutas del Tranvía'),
                children: <Widget>[
                  ListTile(
                    title: Text('Ruta de la Alegría'),
                    subtitle: Text('Vive la experiencia de rascarte'),
                  ),
                  ListTile(
                    title: Text('Ruta del Sexo'),
                    subtitle: Text('Explora las calles de la pasión'),
                  ),
                  ListTile(
                    title: Text('Ruta Gastronómica'),
                    subtitle: Text('Sabores locales'),
                  ),          
                ],
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(16.0),
                  color: ThemeCore.primaryColor,
                  child: const Text(
                    'Rutas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),
                ),
                ExpansionTile(
                  title: const Text('Tranvía',
                  style: TextStyle(
                    fontSize: 18),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('Ruta de la Alegría'),
                      subtitle: Text('Disfruta de rascarte escuchando gaita'),
                      onTap: () {
                        signInBloc.add(const SignInEvent.singInEmail());
                      },
                    ),
                    ListTile(
                      title: Text('Ruta del Terror'),
                      subtitle: Text('Disfruta de la noche marabina'),
                      onTap: () {
                        // Acción para esta ruta
                      },
                    ),
                    ListTile(
                      title: Text('Ruta Gastronómica'),
                      subtitle: Text('Tequeyoyos, empanadas, arepas'),
                      onTap: () {
                        // Acción para esta ruta
                      },
                    ),
              ],
            ),
                ExpansionTile(
                  title: const Text('Fomutur',
                  style: TextStyle(
                    fontSize: 18),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('Ruta de la Comida'),
                      subtitle: Text('Disfruta de la gastronomía zuliana'),
                      onTap: () {
                        signInBloc.add(const SignInEvent.singInEmail());
                      },
                    ),
                    ListTile(
                      title: Text('Ruta de la Marina'),
                      subtitle: Text('Disfruta de la brisa marina'),
                      onTap: () {
                        // Acción para esta ruta
                      },
                    ),
                    ListTile(
                      title: Text('Ruta de el centro'),
                      subtitle: Text('Disfruta de la arquitectura antigua'),
                      onTap: () {
                        // Acción para esta ruta
                      },
                    ),
                  ],
              ),
              ExpansionTile(
                  title: const Text('Lacustres',
                  style: TextStyle(
                    fontSize: 18),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text('San Carlos'),
                      subtitle: Text('Disfruta de la naturaleza'),
                      onTap: () {
                        signInBloc.add(const SignInEvent.singInEmail());
                      },
                    ),
                    ListTile(
                      title: Text('Isla de Toas'),
                      subtitle: Text('La isla de los pescadores'),
                      onTap: () {
                        // Acción para esta ruta
                      },
                    ),
                    ListTile(
                      title: Text('Isla de Zapara'),
                      subtitle: Text('Disfruta de la naturaleza'),
                      onTap: () {
                        // Acción para esta ruta
                      },
                    ),
                  ],
              ),
           ],
          ),
        ),
          Expanded(
            flex: 3, // Ajusta el tamaño del mapa
            child: Stack(
              children: [
              GoogleMap(
                onMapCreated: onMapCreated,            
                initialCameraPosition: CameraPosition(
                  target: center,
                  zoom: 15,                  
                ),
                markers: {
                  tranvia = Marker(
                    markerId: const MarkerId('Tranvía de Maracaibo'),
                    position: const LatLng(10.6564178133895, -71.59488684178918),       
                    icon: customIcons.isNotEmpty ? customIcons[0] : BitmapDescriptor.defaultMarker,  
                    onTap: () {
                      goToLocation(
                        const LatLng(10.6564178133895, -71.59488684178918)
                      );
                      /* showCustomInfoWindow(context, 'Tranvía de Maracaibo', 'Sede del tranvía de Maracaibo'); */ //MUESTRA EL INFOWINDOW CON CLICK
                    },
                  ),
                  plaza = Marker(
                    markerId: const MarkerId('Plaza de la Republica'),
                    position: const LatLng(10.66623260705817, -71.60581323765165),
                    icon: customIcons.isNotEmpty ? customIcons[1] : BitmapDescriptor.defaultMarker,
                    onTap: () {
                      goToLocation(
                        const LatLng(10.665841201331798, -71.60603111374822)
                      );
                      /* showCustomInfoWindow(context, 'Tranvía de Maracaibo', 'Sede del tranvía de Maracaibo'); */ //MUESTRA EL INFOWINDOW CON CLICK
                    },
                  )
                 /*  Marker(
                    markerId: const MarkerId('Casa de Ale'),
                    position: const LatLng(10.69123120599345, -71.62711307241831), 
                    onTap: () {
                      goToLocation(
                        const LatLng(10.69123120599345, -71.62711307241831));
                    }       
                  ), */
                },                
                style: mapStyle,
              ),
              Positioned(
                bottom: 20.0,
                right: 70.0,
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  backgroundColor: ThemeCore.primaryColor,
                  foregroundColor: Colors.white,
                  onPressed: () {
                    goToCenter(center);
                  },
                  child: const Icon(Icons.my_location)                  
                ),                
              )              
            ],                      
            )            
          ),
        ],
      )
    );
  }
}