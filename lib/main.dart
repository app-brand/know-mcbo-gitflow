import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:know_my_city/firebase_options.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation-fixed/core-fixed/router_core-fixed.dart';
import 'package:know_my_city/presentation/core/state_core.dart';
import 'package:provider/provider.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: false,
    sslEnabled: true,
    host: "firestore.googleapis.com",
  );
  await serviceLocator();
  
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
      routerConfig: routerCore, // Asegúrate de importar tu configuración de rutas.
    );
  }
}
