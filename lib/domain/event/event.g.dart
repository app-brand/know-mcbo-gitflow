// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      date: json['date'] as String,
      place: json['place'] as String,
      link: json['link'] as String,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'date': instance.date,
      'place': instance.place,
      'link': instance.link,
    };
