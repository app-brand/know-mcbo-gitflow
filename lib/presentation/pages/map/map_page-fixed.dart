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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
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
          }
        },
        initialCameraPosition: context.read<MapBloc>().state.cameraPosition,
        markers: context.watch<MapBloc>().state.markers,
        onCameraMove: (position) {
          if (_isMapReady) {
            context
                .read<MapBloc>()
                .add(MapEvent.cameraMoved(cameraPosition: position));
          }
        },
        onTap: (position) {
          if (_isMapReady) {
            context.read<MapBloc>().add(MapEvent.mapTapped(position: position));
          }
        },
      ),
    );
  }
}
