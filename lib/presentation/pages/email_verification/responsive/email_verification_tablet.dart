import 'package:flutter/material.dart';

class TabletEmailVerificationLayout extends StatelessWidget {
  final Widget content;

  const TabletEmailVerificationLayout({Key? key, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: content,
        ),
      ),
    );
  }
}
