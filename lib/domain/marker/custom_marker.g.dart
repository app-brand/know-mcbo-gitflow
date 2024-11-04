// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_marker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomMarker _$CustomMarkerFromJson(Map<String, dynamic> json) => CustomMarker(
      iconIndex: (json['iconIndex'] as String),
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$CustomMarkerToJson(CustomMarker instance) =>
    <String, dynamic>{
      'iconIndex': instance.iconIndex,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
