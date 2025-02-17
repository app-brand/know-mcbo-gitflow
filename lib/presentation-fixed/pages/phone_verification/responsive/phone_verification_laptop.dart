import 'package:flutter/material.dart';

class LaptopPhoneVerificationLayout extends StatelessWidget {
  final Widget form;

  const LaptopPhoneVerificationLayout({Key? key, required this.form})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                child: Image.asset(
                  'assets/images/banner/Teatro_Baralt.jpg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(child: form),
          ],
        ),
      ),
    );
  }
}
