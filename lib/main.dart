import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:know_my_city/firebase_options.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/home_core.dart';
import 'package:know_my_city/presentation/core/state_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled:
        false, // Desactiva la persistencia en caché si estás en desarrollo
    sslEnabled: true,
    host: "firestore.googleapis.com",
  );
  await serviceLocator();
  runApp(ChangeNotifierProvider(
    create: (_) => sl<StateCore>(),
    child: const HomeCore(),
  ));
}
