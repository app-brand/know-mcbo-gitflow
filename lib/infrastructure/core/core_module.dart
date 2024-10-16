import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseCoreModule {
  //Solo se usa durante la autenticacion o registro
  @LazySingleton()
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  // Solo se utiliza para lectura de datos inicialmente.
  @LazySingleton()
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  /* @LazySingleton()
  GoogleMapController get googleMapController = GoogleMapController;
   */
  // Investigar
}
