import 'package:flutter/material.dart';

class MapFixed extends StatefulWidget {
  @override
  _MapFixedState createState() => _MapFixedState();
}

class _MapFixedState extends State<MapFixed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
