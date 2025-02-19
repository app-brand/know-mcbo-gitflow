import 'dart:ui_web' as ui;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:know_my_city/firebase_options.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/router_core-fixed.dart';
import 'package:know_my_city/legacy-code/presentation-legacy/core/state_core.dart';
import 'package:provider/provider.dart';
import 'package:know_my_city/legacy-code/presentation-legacy/core/theme_core.dart';
import 'dart:html';


final getIt = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //#1
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: false,
    sslEnabled: true,
    host: "firestore.googleapis.com",
  );
  //#3
  ui.platformViewRegistry.registerViewFactory(
    'recaptcha-container',
    (int viewId) => DivElement()..id = 'recaptcha-container',
  );
  //#2
  await serviceLocator();
  if (!getIt.isRegistered<FirebaseAuth>()) {
    getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
  }
  runApp(
    ChangeNotifierProvider(
      create: (_) => sl<StateCore>(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Conoce Maracaibo',
      debugShowCheckedModeBanner: false,
      theme: ThemeCore.getThemeCore(),
      routerConfig:
          routerCore, // Asegúrate de importar tu configuración de rutas.
    );
  }
}
