// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'axi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Axi _$AxiFromJson(Map<String, dynamic> json) => Axi(
      title_id: (json['title_id'] as num).toInt(),
      titulo: json['titulo'] as String,
      introduccion: json['introduccion'] as String,
      parrafo1: json['parrafo1'] as String,
      parrafo2: json['parrafo2'] as String,
      imagen_principal: json['imagen_principal'] as String,
      imagen1: json['imagen1'] as String,
      imagen2: json['imagen2'] as String,
    );

Map<String, dynamic> _$AxiToJson(Axi instance) => <String, dynamic>{
      'title_id': instance.title_id,
      'titulo': instance.titulo,
      'introduccion': instance.introduccion,
      'parrafo1': instance.parrafo1,
      'parrafo2': instance.parrafo2,
      'imagen_principal': instance.imagen_principal,
      'imagen1': instance.imagen1,
      'imagen2': instance.imagen2,
    };
