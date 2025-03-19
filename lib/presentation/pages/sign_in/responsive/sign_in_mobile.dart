import 'package:flutter/material.dart';

class MobileSignInLayout extends StatelessWidget {
  final Widget signInForm;

  const MobileSignInLayout({Key? key, required this.signInForm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: signInForm,
          ),
        ],
      ),
    );
  }
}
