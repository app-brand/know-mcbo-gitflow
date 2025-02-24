// lib/bloc/map_state.dart

part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    required CameraPosition cameraPosition,
    required Set<Marker> markers,
    required Set<Marker> lowZoomMarkers,
    required Set<Marker> mediumZoomMarkers,
    required Set<Marker> highZoomMarkers,
    GoogleMapController? mapController,
    String? selectedCategory,
    List<dynamic>? places,
  }) = _MapState;

  factory MapState.initial() => const MapState(
        cameraPosition: CameraPosition(
          target: LatLng(10.633333, -71.633333), // Coordenadas de Maracaibo
          zoom: 13, // Ajusta el zoom según necesites
        ),
        markers: {},
        lowZoomMarkers: {},
        mediumZoomMarkers: {},
        highZoomMarkers: {},
      );
}
