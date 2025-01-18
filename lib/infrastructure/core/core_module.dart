import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreModule {
  //Solo se usa durante la autenticacion o registro
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  // Solo se utiliza para lectura de datos inicialmente.
  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  // Http request and response
  @lazySingleton
  Dio get dio => Dio();
}
