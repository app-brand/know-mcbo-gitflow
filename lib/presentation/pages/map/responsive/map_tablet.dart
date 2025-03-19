import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/application/map/map_bloc.dart';

class MapTablet extends StatelessWidget {
  const MapTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MapBloc()..add(const MapEvent.started()),
      child: const _MapTabletView(),
    );
  }
}

class _MapTabletView extends StatefulWidget {
  const _MapTabletView({super.key});

  @override
  State<_MapTabletView> createState() => _MapTabletViewState();
}

class _MapTabletViewState extends State<_MapTabletView> {
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
                target: LatLng(10.6427, -71.6125),
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
