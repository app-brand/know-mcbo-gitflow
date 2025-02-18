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
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/images/banner/monumentochinita.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
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
