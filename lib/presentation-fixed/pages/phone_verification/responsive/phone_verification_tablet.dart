import 'package:flutter/material.dart';

class TabletPhoneVerificationLayout extends StatelessWidget {
  final Widget form;

  const TabletPhoneVerificationLayout({Key? key, required this.form})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
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
                  height: 250,
                  width: double.infinity,
                ),
              ),
              form,
            ],
          ),
        ),
      ),
    );
  }
}
