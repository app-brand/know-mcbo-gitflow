import 'package:flutter/material.dart';
import 'responsive/map_mobile.dart';
import 'responsive/map_tablet.dart';
import 'responsive/map_laptop.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width < 700) {
      return const MapMobile();
    } else if (width < 1200) {
      return const MapTablet();
    } else {
      return const MapLaptop();
    }
  }
}
