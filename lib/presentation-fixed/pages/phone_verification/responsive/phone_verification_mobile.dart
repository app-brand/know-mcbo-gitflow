import 'package:flutter/material.dart';

class MobilePhoneVerificationLayout extends StatelessWidget {
  final Widget form;

  const MobilePhoneVerificationLayout({Key? key, required this.form})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: Image.asset(
              'assets/images/banner/Teatro_Baralt.jpg',
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          form,
        ],
      ),
    );
  }
}
