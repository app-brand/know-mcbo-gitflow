import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/core/home/responsive/laptop_home_layout.dart';
import 'package:know_my_city/presentation/core/home/responsive/mobile_home_layout.dart';
import 'package:know_my_city/presentation/core/home/responsive/tablet_home_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < 700) {
      return const MobileHomeLayout();
    } else if (width < 1200) {
      return const TabletHomeLayout();
    } else {
      return const LaptopHomeLayout();
    }
  }
}
