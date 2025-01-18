import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:know_my_city/presentation/core/directions_model.dart';

class DirectionsRepository {
  static const String baseUrl =
      'https://us-central1-know-my-city-eaa7f.cloudfunctions.net/get_proxy_directions';
  final Dio _dio;
  DirectionsRepository({Dio? dio}) : _dio = dio ?? Dio();
  Future<List<List<LatLng>>> getDirections(
      {required List<Map<String, LatLng>> routes}) async {
    print('calling - map dio');
    Dio mi_dio = Dio();
    mi_dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };
    List<List<LatLng>> allPolylines = [];
    for (var route in routes) {
      final origin = route['origin']!;
      final destination = route['destination']!;
      try {
        //String request_url = baseUrl +
        //    '?origin=${origin.latitude.toString()},${origin.longitude.toString()}&destination=${destination.latitude.toString()},${destination.longitude.toString()}';
        //print(request_url);
        final response = await mi_dio.get(baseUrl, queryParameters: {
          'origin': "${origin.latitude},${origin.longitude}",
          'destination': "${destination.latitude},${destination.longitude}"
        });
        print(response.realUri);
        print(response.data);
        // final data = json.decode(response.data);
        final List<LatLng> polylinePoints = [];
        if (response.data['routes'].isNotEmpty) {
          final points =
              response.data['routes'][0]['overview_polyline']['points'];
          polylinePoints.addAll(_decodePolyline(points));
        }
        /* print('Polyline points: $polylinePoints'); */
        allPolylines.add(polylinePoints);
      } on DioError catch (e) {
        print(e.type);
        print(e.message);
        print(e.response?.data);
      }
    }
    return allPolylines;
  }

  List<LatLng> _decodePolyline(String encoded) {
    PolylinePoints polylinePoints = PolylinePoints();
    List<PointLatLng> result = polylinePoints.decodePolyline(encoded);

    return result
        .map((point) => LatLng(point.latitude, point.longitude))
        .toList();
  }
}
