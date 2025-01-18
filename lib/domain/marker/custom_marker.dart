import 'package:json_annotation/json_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'custom_marker.g.dart';

@JsonSerializable()
class CustomMarker {
  final String iconIndex;
  final String name;
  final double latitude;
  final double longitude;

  CustomMarker({
    required this.iconIndex,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  // Factory constructor para crear una instancia de CustomMarker desde JSON
  factory CustomMarker.fromJson(Map<String, dynamic> json) => _$CustomMarkerFromJson(json);

  // Método para convertir una instancia de CustomMarker a JSON
  Map<String, dynamic> toJson() => _$CustomMarkerToJson(this);

  // Método de conversión a google_maps_flutter.Marker
  Marker toGoogleMapMarker() {    
    return Marker(
      markerId: MarkerId(name),
      position: LatLng(latitude, longitude),
      infoWindow: InfoWindow(title: name),
      icon: AssetMapBitmap(iconIndex, width: 40.0, height: 45.0)
    );
  }

  // Factory constructor para crear una instancia de CustomMarker desde datos de Firestore
  factory CustomMarker.fromFirestore(Map<String, dynamic> firestoreData) {
    return CustomMarker(
      iconIndex: firestoreData['iconIndex'] as String,
      name: firestoreData['name'] as String,
      latitude: firestoreData['latitude'] as double,
      longitude: firestoreData['longitude'] as double,
    );
  }
}
