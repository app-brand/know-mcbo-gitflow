// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable()
class Event {
  final String title;
  final String imageUrl;
  final String date;
  final String place;
  final String link;

  Event({
    required this.title,
    required this.imageUrl,
    required this.date,
    required this.place,
    required this.link,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
  Map<String, dynamic> toJson() => _$EventToJson(this);
}
