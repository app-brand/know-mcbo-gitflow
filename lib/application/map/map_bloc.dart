// lib/bloc/map_bloc.dart

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_event.dart';
part 'map_state.dart';
part 'map_bloc.freezed.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(MapState.initial()) {
    on<MapEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          final lowZoomMarkerIcon = await _createCustomMarker('assets/images/markers/1.png');
          final mediumZoomMarkerIcon = await _createCustomMarker('assets/images/markers/2.png');
          final highZoomMarkerIcon = await _createCustomMarker('assets/images/markers/3.png');

          final lowZoomMarkers = <Marker>{
            Marker(
              markerId: const MarkerId('maracaibo'),
              position: const LatLng(10.633333, -71.633333),
              icon: lowZoomMarkerIcon,
            ),
            Marker(
              markerId: const MarkerId('plaza_republica'),
              position: const LatLng(10.66648711722489, -71.60586932594066),
              icon: lowZoomMarkerIcon,
            ),
          };

          final mediumZoomMarkers = <Marker>{
            Marker(
              markerId: const MarkerId('costa_verde'),
              position: const LatLng(10.678360187286708, -71.60686237196843),
              icon: mediumZoomMarkerIcon,
            ),
            Marker(
              markerId: const MarkerId('kristoff'),
              position: const LatLng(10.675518151786868, -71.61015717554922),
              icon: mediumZoomMarkerIcon,
            ),
          };

          final highZoomMarkers = <Marker>{
            Marker(
              markerId: const MarkerId('punto_medio'),
              position: const LatLng(10.676552090964172, -71.608927155337),
              icon: highZoomMarkerIcon,
            ),
            Marker(
              markerId: const MarkerId('punto_medio_2'),
              position: const LatLng(10.676588449589577, -71.60635228638216),
              icon: highZoomMarkerIcon,
            ),
          };

          emit(state.copyWith(
            lowZoomMarkers: lowZoomMarkers,
            mediumZoomMarkers: mediumZoomMarkers,
            highZoomMarkers: highZoomMarkers,
          ));
          _updateMarkersBasedOnZoom(state.cameraPosition.zoom, emit);
        },
        cameraMoved: (e) {
          emit(state.copyWith(cameraPosition: e.cameraPosition));
          _updateMarkersBasedOnZoom(e.cameraPosition.zoom, emit);
        },
        markerAdded: (e) {
          final updatedMarkers = Set<Marker>.from(state.markers)..add(e.marker);
          emit(state.copyWith(markers: updatedMarkers));
        },
        mapTapped: (e) {
          final marker = Marker(
            markerId: MarkerId('${e.position.latitude}-${e.position.longitude}'),
            position: e.position,
          );
          final updatedMarkers = Set<Marker>.from(state.markers)..add(marker);
          emit(state.copyWith(markers: updatedMarkers));
        },
        centerOnMaracaibo: (e) {
          const maracaiboPosition = CameraPosition(
            target: LatLng(10.633333, -71.633333),
            zoom: 13,
          );
          emit(state.copyWith(cameraPosition: maracaiboPosition));
        },
        mapStyled: (e) async {
          print('Aplicando - estilo al mapa');
          try {
            final String style =
                await rootBundle.loadString('assets/map/map_style.json');
            e.controller.setMapStyle(style);
            emit(state.copyWith(mapController: e.controller));
          } catch (error) {
            print("Error al aplicar el estilo del mapa: $error");
          }
        },
        showLowZoomMarkers: (e) {
          /* _updateCameraPosition(14, emit); */
          emit(state.copyWith(markers: state.lowZoomMarkers));
        },
        showMediumZoomMarkers: (e) {
          /* _updateCameraPosition(16, emit); */
          emit(state.copyWith(markers: state.mediumZoomMarkers));
        },
        showHighZoomMarkers: (e) {
          /* _updateCameraPosition(17, emit); */
          emit(state.copyWith(markers: state.highZoomMarkers));
        },
        showCategory: (e) async {
          final String response = await rootBundle.loadString('assets/json/places.json');
          final List<dynamic> data = json.decode(response);
          final places = data.where((place) => place['category'] == e.category).toList();
          emit(state.copyWith(selectedCategory: e.category, places: places));
        },
        showPlaceDetails: (e) async {
          final String response = await rootBundle.loadString('assets/json/places.json');
          final List<dynamic> data = json.decode(response);
          final place = data.firstWhere((place) => place['id'] == e.placeId);

          showDialog(
            context: e.context,
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
        },
      );
    });
  }

  Future<BitmapDescriptor> _createCustomMarker(String assetPath) async {
    return await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      assetPath,
    );
  }

  void _updateMarkersBasedOnZoom(double zoom, Emitter<MapState> emit) {
    if (zoom < 14) {
      emit(state.copyWith(markers: state.lowZoomMarkers));
    } else if (zoom < 16) {
      emit(state.copyWith(markers: state.mediumZoomMarkers));
    } else {
      emit(state.copyWith(markers: state.highZoomMarkers));
    }
  }

  void _updateCameraPosition(double zoom, Emitter<MapState> emit) {
    final newCameraPosition = CameraPosition(
      target: state.cameraPosition.target,
      zoom: zoom,
    );
    emit(state.copyWith(cameraPosition: newCameraPosition));
    state.mapController?.animateCamera(CameraUpdate.newCameraPosition(newCameraPosition));
  }
}
