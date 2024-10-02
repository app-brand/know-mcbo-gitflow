import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:know_my_city/firebase_options.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/home_core.dart';
import 'package:know_my_city/presentation/core/router_core.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // Inicializadore - Mejorar esta logica.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerCore,
      title: 'Know My City',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}