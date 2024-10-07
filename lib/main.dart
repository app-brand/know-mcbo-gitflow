import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:know_my_city/firebase_options.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/home_core.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HomeCore());
}
