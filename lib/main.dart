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
  await serviceLocator();
  runApp(ChangeNotifierProvider(
    create: (_) => sl<StateCore>(),
    child: const HomeCore(),
  ));
}
