// lib/bloc/map_event.dart

part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.started() = _Started;
  const factory MapEvent.cameraMoved({
    required CameraPosition cameraPosition,
  }) = _CameraMoved;
  const factory MapEvent.markerAdded({
    required Marker marker,
  }) = _MarkerAdded;
  const factory MapEvent.mapTapped({
    required LatLng position,
  }) = _MapTapped;
}
