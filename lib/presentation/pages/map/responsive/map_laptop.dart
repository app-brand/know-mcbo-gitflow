import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/application/map/map_bloc.dart';

class MapLaptop extends StatelessWidget {
  const MapLaptop({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MapBloc()..add(const MapEvent.started()),
      child: const _MapLaptopView(),
    );
  }
}

class _MapLaptopView extends StatefulWidget {
  const _MapLaptopView({super.key});

  @override
  State<_MapLaptopView> createState() => __MapLaptopViewState();
}

class __MapLaptopViewState extends State<_MapLaptopView> {
  late GoogleMapController _mapController;

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(10.6427, -71.6125), // Ubicación inicial
                zoom: 13,
              ),
              onMapCreated: (controller) {
                _mapController = controller;
              },
            ),
          ),
        ],
      ),
    );
  }
}
