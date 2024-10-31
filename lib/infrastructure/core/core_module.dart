import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:know_my_city/firebase_options.dart';

@module
abstract class CoreModule {
  // Método para inicializar Firebase y obtener FirebaseApp
  @preResolve
  Future<FirebaseApp> get firebaseApp async => await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
  //Solo se usa durante la autenticacion o registro
  @Singleton()
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  // Solo se utiliza para lectura de datos inicialmente.
  @Singleton()
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  // Http request and response
  @Singleton()
  Dio get dio => Dio();
}
