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
  const factory MapEvent.mapStyled(GoogleMapController controller) = _MapStyled;
  const factory MapEvent.centerOnMaracaibo() = _CenterOnMaracaibo;
  const factory MapEvent.showLowZoomMarkers() = _ShowLowZoomMarkers;
  const factory MapEvent.showMediumZoomMarkers() = _ShowMediumZoomMarkers;
  const factory MapEvent.showHighZoomMarkers() = _ShowHighZoomMarkers;
  const factory MapEvent.showCategory(String category) = _ShowCategory;
  const factory MapEvent.showPlaceDetails(String placeId, BuildContext context) = _ShowPlaceDetails;
}
