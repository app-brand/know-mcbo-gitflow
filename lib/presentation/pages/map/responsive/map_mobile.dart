import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/application/map/map_bloc.dart';

class MapMobile extends StatelessWidget {
  const MapMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MapBloc()..add(const MapEvent.started()),
      child: const _MapMobileView(),
    );
  }
}

class _MapMobileView extends StatefulWidget {
  const _MapMobileView();

  @override
  State<_MapMobileView> createState() => _MapMobileViewState();
}

class _MapMobileViewState extends State<_MapMobileView> {
  late GoogleMapController _mapController;

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(10.6427, -71.6125), // Ubicación por defecto
          zoom: 13,
        ),
        onMapCreated: (controller) {
          _mapController = controller;
        },
      ),
    );
  }
}
