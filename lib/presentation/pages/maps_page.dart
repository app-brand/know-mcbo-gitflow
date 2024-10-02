import 'package:flutter/material.dart';
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

  late GoogleMapController mapController;
  final LatLng _center = const LatLng(10.70496520472734, -71.61494198553409);


  late SignInBloc _signInBloc;
  @override
  void initState() {
    super.initState();
    _signInBloc = sl<SignInBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      bloc: _signInBloc,
      builder: (context, state) {
        if (state.isSubmitting) {
          return Center(child: CircularProgressIndicator());
        } else {
          return MainMaps(
            signInBloc: _signInBloc,
            center: _center,
            );
        }
      },
    );
  }
}

class MainMaps extends StatelessWidget {
  const MainMaps({
    super.key,
    required this.signInBloc,
    required this.center,
  });

  final SignInBloc signInBloc;
  final LatLng center;
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
                icon: const Icon(Icons.map),
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
                      title: Text('Ruta del sexo'),
                      subtitle: Text('Explora las calles de la pasión'),
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
                      title: Text('Ruta de Luis'),
                      subtitle: Text('Carlos + Luis = amorxsiempre'),
                      onTap: () {
                        signInBloc.add(const SignInEvent.singInEmail());
                      },
                    ),
                    ListTile(
                      title: Text('Ruta de Marina'),
                      subtitle: Text('Zzzzzzz'),
                      onTap: () {
                        // Acción para esta ruta
                      },
                    ),
                    ListTile(
                      title: Text('Ruta de Juan'),
                      subtitle: Text('Liberen al alcalde'),
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
                      subtitle: Text('La playa de los maricos'),
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
            flex: 3, // Ajusta el tamaño del mapaco
            child: GoogleMap(
              onMapCreated: (GoogleMapController controller) {},
              initialCameraPosition: CameraPosition(
                target: center,
                zoom: 15.0,
              ),
            ),
          ),
        ],
      )
    );
  }
}