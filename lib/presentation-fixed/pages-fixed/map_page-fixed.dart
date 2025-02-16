import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/application/map/map_bloc.dart';
import 'package:know_my_city/presentation/widgets/main_footer.dart';

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
  GoogleMapController? _mapController;
  bool _isMapReady = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: (controller) {
          setState(() {
            _mapController = controller;
            _isMapReady = true;
          });
        },
        initialCameraPosition: context.read<MapBloc>().state.cameraPosition,
        markers: context.watch<MapBloc>().state.markers,
        onCameraMove: (position) {
          context
              .read<MapBloc>()
              .add(MapEvent.cameraMoved(cameraPosition: position));
        },
        onTap: (position) {
          context.read<MapBloc>().add(MapEvent.mapTapped(position: position));
        },
      ),
    );
  }
}
