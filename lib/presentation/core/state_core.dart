import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class StateCore extends ChangeNotifier {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firebaseFirestore;

  StateCore({
    required FirebaseAuth auth,
    required FirebaseFirestore firebaseFirestore,
  })  : _auth = auth,
        _firebaseFirestore = firebaseFirestore;

  /// Verifica si `FirebaseFirestore` está correctamente instanciado
  Future<bool> checkFirestoreConnection() async {
    try {
      // Realiza una consulta de prueba a Firestore
      QuerySnapshot querySnapshot =
          await _firebaseFirestore.collection('gastronomia').limit(1).get();
      // Devuelve verdadero solo si la colección contiene al menos un documento
      return querySnapshot.docs.isNotEmpty;
    } catch (e) {
      print('Error en Firestore: $e');
      return false;
    }
  }
}
