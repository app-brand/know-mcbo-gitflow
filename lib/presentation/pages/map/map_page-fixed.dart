import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:know_my_city/application/map/map_bloc.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MapBloc()..add(const MapEvent.started()),
      child: const MapView(),
    );
  }
}

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late GoogleMapController _mapController;
  bool _isMapReady = false;
  List<dynamic> places = [];
  String selectedCategory = '';

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  /// Método para aplicar el estilo del mapa con una pequeña espera en Web
  Future<void> _applyMapStyle(GoogleMapController controller) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (!mounted) return;
    try {
      String style = await rootBundle.loadString('assets/map/map_style.json');
      controller.setMapStyle(style);
    } catch (e) {
      print("Error al aplicar el estilo del mapa: $e");
    }
  }

  void _updateCameraPosition(double zoom) {
    if (_mapController != null) {
      _mapController!.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: context.read<MapBloc>().state.cameraPosition.target,
            zoom: zoom,
          ),
        ),
      );
    }
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          builder: (BuildContext context, ScrollController scrollController) {
            return ListView(
              controller: scrollController,
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: 60,
                  color: Colors.teal,
                  child: const Center(
                    child: Text(
                      'Categorías de Locales',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_cafe, color: Colors.brown),
                  title: const Text('Cafeterías'),
                  onTap: () {
                    Navigator.pop(context);
                    /* _updateCameraPosition(14); */
                    context.read<MapBloc>().add(const MapEvent.showLowZoomMarkers());
                    context.read<MapBloc>().add(const MapEvent.showCategory('Cafeterías'));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_dining, color: Colors.red),
                  title: const Text('Restaurantes'),
                  onTap: () {
                    Navigator.pop(context);
                    /* _updateCameraPosition(16); */
                    context.read<MapBloc>().add(const MapEvent.showMediumZoomMarkers());
                    context.read<MapBloc>().add(const MapEvent.showCategory('Restaurantes'));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.local_bar, color: Colors.green),
                  title: const Text('Bares'),
                  onTap: () {
                    Navigator.pop(context);
                    /* _updateCameraPosition(17); */
                    context.read<MapBloc>().add(const MapEvent.showHighZoomMarkers());
                    context.read<MapBloc>().add(const MapEvent.showCategory('Bares'));
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

   Future<void> _loadPlaces(String category) async {
    final String response = await rootBundle.loadString('assets/data/places.json');
    final List<dynamic> data = json.decode(response);
    setState(() {
      selectedCategory = category;
      places = data.where((place) => place['category'] == category).toList();
    });
  }

  void _showPlaceDialog(BuildContext context, dynamic place) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(place['name']),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text(place['address']),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(place['whatsapp']),
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: Text(place['hours']),
              ),
              ListTile(
                leading: Icon(Icons.local_offer),
                title: Text(place['services'].join(', ')),
              ),
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text(place['instagram']),
              ),
            ],
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /* title: const Text('Mapa de Locales'), */
        actions: [
          if (MediaQuery.of(context).size.width < 600)
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => _showBottomSheet(context),
            ),
        ],
      ),
      /* drawer: MediaQuery.of(context).size.width < 600 ? Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.menu, color: Colors.teal),
              title: const Text('Abrir Categorías'),
              onTap: () {
                Navigator.pop(context);
                _showBottomSheet(context);
              },
            ),
          ],
        ),
      ) : null, */
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 600)
            Container(
              width: 300,
              color: Colors.white,
              child: BlocBuilder<MapBloc, MapState>(
                builder: (context, state) {
                  return ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      if (state.selectedCategory == null || state.selectedCategory!.isEmpty)
                        ...[
                          ListTile(
                            title: const Text(
                              'Categorías de Locales',
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.local_cafe, color: Colors.brown),
                            title: const Text('Cafeterías'),
                            onTap: () {
                              /* _updateCameraPosition(14); */
                              context.read<MapBloc>().add(const MapEvent.showLowZoomMarkers());
                              context.read<MapBloc>().add(const MapEvent.showCategory('Cafeterías'));
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.local_dining, color: Colors.red),
                            title: const Text('Restaurantes'),
                            onTap: () {
                              /* _updateCameraPosition(16); */
                              context.read<MapBloc>().add(const MapEvent.showMediumZoomMarkers());
                              context.read<MapBloc>().add(const MapEvent.showCategory('Restaurantes'));
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.local_bar, color: Colors.green),
                            title: const Text('Bares'),
                            onTap: () {
                              /* _updateCameraPosition(17); */
                              context.read<MapBloc>().add(const MapEvent.showHighZoomMarkers());
                              context.read<MapBloc>().add(const MapEvent.showCategory('Bares'));
                            },
                          ),
                        ]
                      else
                        ...[
                          ListTile(
                            leading: Icon(Icons.arrow_back, color: Colors.teal),
                            title: const Text('Atrás'),
                            onTap: () {
                              context.read<MapBloc>().add(const MapEvent.showCategory(''));
                            },
                          ),
                          ...state.places!.take(3).map((place) {
                            return ListTile(
                              title: Text(place['name']),
                              onTap: () => context.read<MapBloc>().add(MapEvent.showPlaceDetails(place['id'], context)),
                            );
                          }).toList(),
                        ],
                    ],
                  );
                },
              ),
            ),
          Expanded(
            child: BlocBuilder<MapBloc, MapState>(
              builder: (context, state) {
                return GoogleMap(
                  onMapCreated: (controller) {
                    if (mounted) {
                      setState(() {
                        _mapController = controller;
                        _isMapReady = true;
                      });

                      // Aplicar el estilo del mapa con un retraso
                      if (_isMapReady) {
                        print("Cargando estilos...");
                        _applyMapStyle(controller);
                      }

                      // Asignar el controlador del mapa al Bloc
                      context.read<MapBloc>().add(MapEvent.mapStyled(controller));
                    }
                  },
                  initialCameraPosition: state.cameraPosition,
                  markers: state.markers,
                  onCameraMove: (position) {
                    if (_isMapReady) {
                      context
                          .read<MapBloc>()
                          .add(MapEvent.cameraMoved(cameraPosition: position));
                    }
                  },
                  minMaxZoomPreference: const MinMaxZoomPreference(13, 17),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
