import 'package:flutter/material.dart';

class AboutFixed extends StatefulWidget {
  @override
  _AboutFixedState createState() => _AboutFixedState();
}

class _AboutFixedState extends State<AboutFixed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Fixed'),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
