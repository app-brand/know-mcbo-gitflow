import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:know_my_city/presentation/core/.env.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:know_my_city/presentation/core/directions_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

/* class DirectionsRepository {
  static const String _baseUrl = 'https://maps.googleapis.com/maps/api/directions/json?';

  final Dio _dio;

  DirectionsRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<Directions?> getDirections({
    required LatLng tranvia, plaza, required LatLng origin, required LatLng destination
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
} */
class DirectionsRepository {
  Future<List<List<LatLng>>> getMultipleDirections({
    required List<Map<String, LatLng>> routes,
  }) async {
    const String proxyUrl = 'http://localhost:3000/directions';
    List<List<LatLng>> allPolylines = [];

    for (var route in routes) {
      final origin = route['origin']!;
      final destination = route['destination']!;
      final String url =
          '$proxyUrl?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=AIzaSyA0vsjSJXoisdpB-ouzVZuk0aCiEaievws';

      try {
        final response = await http.get(Uri.parse(url));

        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          print('Response data: $data');

          final List<LatLng> polylinePoints = [];

          if (data['routes'].isNotEmpty) {
            final points = data['routes'][0]['overview_polyline']['points'];
            polylinePoints.addAll(_decodePolyline(points));
          }

          print('Polyline points: $polylinePoints');
          allPolylines.add(polylinePoints);
        } else {
          print('Failed to load directions: ${response.statusCode}');
          throw Exception('Failed to load directions');
        }
      } catch (e) {
        print('Error fetching directions: $e');
        throw e;
      }
    }

    return allPolylines;
  }

  List<LatLng> _decodePolyline(String encoded) {
    PolylinePoints polylinePoints = PolylinePoints();
    List<PointLatLng> result = polylinePoints.decodePolyline(encoded);

    return result.map((point) => LatLng(point.latitude, point.longitude)).toList();
  }
}