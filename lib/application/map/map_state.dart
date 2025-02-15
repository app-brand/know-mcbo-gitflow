// lib/bloc/map_state.dart

part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    required CameraPosition cameraPosition,
    required Set<Marker> markers,
  }) = _MapState;

  factory MapState.initial() => MapState(
        cameraPosition: const CameraPosition(
          target: LatLng(37.7749,
              -122.4194), // Coordenadas iniciales (por ejemplo, San Francisco)
          zoom: 10,
        ),
        markers: {},
      );
}
