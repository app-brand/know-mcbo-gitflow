import 'package:flutter/material.dart';

class MobileEmailVerificationLayout extends StatelessWidget {
  final Widget content;

  const MobileEmailVerificationLayout({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: content,
      ),
    );
  }
}
