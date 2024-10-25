// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'axi.g.dart';

@JsonSerializable()
class Axi {
  final String title;
  final String axis_name;
  final String axis_description;
  final String axis_image_url;
  final String? url; // Hacer que la propiedad url sea nullable

  Axi({
    required this.title,
    required this.axis_name,
    required this.axis_description,
    required this.axis_image_url,
    this.url, // url es opcional
  });

  // Factory para crear una instancia de Axi desde JSON
  factory Axi.fromJson(Map<String, dynamic> json) => _$AxiFromJson(json);

  // Método para serializar la clase Axi a JSON
  Map<String, dynamic> toJson() => _$AxiToJson(this);
}
