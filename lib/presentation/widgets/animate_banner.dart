import 'dart:async';
import 'package:flutter/material.dart';

// TODO: refactorizar, para rendirizar con gradientes y consultar
// como materializar una transicion que incluya talvez un relempago o algo asociado al sol.
class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<String> _imageList = [
    'assets/images/main/main_1.jpeg',
    'assets/images/main/main_2.jpeg',
    'assets/images/main/main_3.jpeg',
  ];
  void startTimer() {
    Future.delayed(const Duration(seconds: 5), () {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _imageList.length;
        });
      }
      startTimer();
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      double width = constraints.maxWidth;
      return Stack(
        alignment: Alignment.center,
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Image.asset(
              _imageList[_currentIndex],
              height: 0.4907 * (width),
              width: width,
              fit: BoxFit.cover,
              key: ValueKey(_imageList[_currentIndex]),
            ),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          ),
          Image.asset(
            width: 0.6766 * (width),
            height: 0.2771 * (width),
            "images/brand/conoce.png", // Corregida la ruta de la imagen
            //fit: BoxFit.cover,
          )
        ],
      );
    });
  }
}
