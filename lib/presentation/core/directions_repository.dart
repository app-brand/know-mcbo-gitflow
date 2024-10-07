import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:know_my_city/presentation/core/.env.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsRepository {
  static const String _baseUrl = 'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio _dio;

  DirectionsRepository({Dio dio}) : _dio = dio ?? Dio();

  Future<Directions> getDirections({
    required LatLng tranvia, plaza
    }) async {
      final response = await _dio.get(
        _baseUrl,
        queryParameters: {
          'origin': '${tranvia.latitude},${tranvia.longitude}',
          'destination': '${plaza.latitude},${plaza.longitude}',
          'key': googleAPIKey,
        },
      );

      // revisar si la respuesta es correcta
      if (response.statusCode == 200) {
        return Directions.fromMap(response.data);
      }
      return null;
    }
}