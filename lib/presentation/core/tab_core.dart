import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/widgets/ejes_list.dart';
import 'package:know_my_city/presentation/widgets/ejes2_list.dart';
import 'package:know_my_city/presentation/widgets/ejes3_list.dart';
import 'package:know_my_city/presentation/widgets/maracaiboantano.dart';

class TabCore extends StatefulWidget {
  const TabCore({super.key});

  @override
  State<TabCore> createState() => _TabCoreState();
}

class _TabCoreState extends State<TabCore> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Know My City'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: "Ruta 1"),
              Tab(icon: Icon(Icons.directions_transit), text: "Ruta 2"),
              Tab(icon: Icon(Icons.directions_bike), text: "Ruta 3"),
              Tab(icon: Icon(Icons.directions_walk), text: "Antaño"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TravelPageContent(),
            EspaciosContent(),
            GastronomiaContent(),
            MaracaiboAntano(),
          ],
        ),
      ),
    );
  }
}
