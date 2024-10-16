// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'axi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Axi _$AxiFromJson(Map<String, dynamic> json) => Axi(
      title: json['title'] as String,
      axis_name: json['axis_name'] as String,
      axis_description: json['axis_description'] as String,
      axis_image_url: json['axis_image_url'] as String,
    );

Map<String, dynamic> _$AxiToJson(Axi instance) => <String, dynamic>{
      'title': instance.title,
      'axis_name': instance.axis_name,
      'axis_description': instance.axis_description,
      'axis_image_url': instance.axis_image_url,
    };
