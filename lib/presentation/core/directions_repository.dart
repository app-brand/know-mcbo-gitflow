import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:know_my_city/presentation/core/directions_model.dart';

class DirectionsRepository {
  static const String baseUrl =
      'https://us-central1-know-my-city-eaa7f.cloudfunctions.net/get_directions';
  static const String localUrl =
      'http://127.0.0.1:5001/know-my-city-eaa7f/us-central1/get_directions';

  final Dio _dio;

  DirectionsRepository({Dio? dio}) : _dio = dio ?? Dio();

  Future<List<List<LatLng>>> getDirections(
      {required List<Map<String, LatLng>> routes}) async {
    print('calling - map dio');
    Dio mi_dio = Dio();
    List<List<LatLng>> allPolylines = [];
    for (var route in routes) {
      final origin = route['origin']!;
      final destination = route['destination']!;
      // Los parámetros que necesitas para la API de Directions
      /* Map<String, dynamic> queryParams = {
        'origin':
            origin.latitude.toString() + ',' + origin.longitude.toString(),
        'destination': destination.latitude.toString() +
            ',' +
            destination.longitude.toString(),
        'key': 'AIzaSyA0vsjSJXoisdpB-ouzVZuk0aCiEaievws',
      }; */
      try {
        //&key=AIzaSyA0vsjSJXoisdpB-ouzVZuk0aCiEaievws
        String UrlMain =
            'https://cors-anywhere.herokuapp.com/https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude.toString()},${origin.longitude.toString()}&destination=${destination.latitude.toString()},${destination.longitude.toString()}&key=AIzaSyA0vsjSJXoisdpB-ouzVZuk0aCiEaievws';
        String _llUrl = baseUrl +
            '?origin=${origin.latitude.toString()},${origin.longitude.toString()}&destination=${destination.latitude.toString()},${destination.longitude.toString()}';
        print(_llUrl);
        final Response response = await mi_dio.get(_llUrl);
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
        print(e);
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
