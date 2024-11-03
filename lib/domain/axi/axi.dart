import 'package:json_annotation/json_annotation.dart';

part 'axi.g.dart';

@JsonSerializable()
class Axi {
  final String titulo;
  final String introduccion;
  final String parrafo1;
  final String parrafo2;
  final String imagen_principal;
  final String imagen1;
  final String imagen2;
  final String axis_name;
  final String axis_description;

  Axi({
    required this.titulo,
    required this.introduccion,
    required this.parrafo1,
    required this.parrafo2,
    required this.imagen_principal,
    required this.imagen1,
    required this.imagen2,
    required this.axis_name,
    required this.axis_description,
  });

  // Factory para crear una instancia de Axi desde JSON
  factory Axi.fromJson(Map<String, dynamic> json) => _$AxiFromJson(json);

  // Método para serializar la clase Axi a JSON
  Map<String, dynamic> toJson() => _$AxiToJson(this);

  // Factory para crear una instancia de Axi desde los datos de Firestore
  factory Axi.fromFirestore(Map<String, dynamic> firestoreData) {
    return Axi(
      titulo: firestoreData['titulo'] as String,
      introduccion: firestoreData['introduccion'] as String,
      parrafo1: firestoreData['parrafo1'] as String,
      parrafo2: firestoreData['parrafo2'] as String,
      imagen_principal: firestoreData['imagen_principal'] as String,
      imagen1: firestoreData['imagen1'] as String,
      imagen2: firestoreData['imagen2'] as String,
      axis_name: firestoreData['axis_name'] as String,
      axis_description: firestoreData['axis_description'] as String,
    );
  }
}
