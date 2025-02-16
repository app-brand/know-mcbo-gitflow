// lib/bloc/map_bloc.dart

import 'package:bloc/bloc.dart';
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
        started: (e) {
          // Evento de inicio: aquí podrías inicializar algo si es necesario.
        },
        cameraMoved: (e) {
          // Actualizamos la posición de la cámara en el estado.
          emit(state.copyWith(cameraPosition: e.cameraPosition));
        },
        markerAdded: (e) {
          // Agregamos el marcador recibido en el evento.
          final updatedMarkers = Set<Marker>.from(state.markers)..add(e.marker);
          emit(state.copyWith(markers: updatedMarkers));
        },
        mapTapped: (e) {
          // Al tocar el mapa, se crea y agrega un marcador en la posición indicada.
          final marker = Marker(
            markerId:
                MarkerId('${e.position.latitude}-${e.position.longitude}'),
            position: e.position,
          );
          final updatedMarkers = Set<Marker>.from(state.markers)..add(marker);
          emit(state.copyWith(markers: updatedMarkers));
        },
        centerOnMaracaibo: (e) {
          const maracaiboPosition = CameraPosition(
            target: LatLng(10.633333, -71.633333),
            zoom: 14, // Ajusta el zoom según necesites
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
      );
    });
  }
}
