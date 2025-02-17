import 'package:flutter/material.dart';

class LaptopSignInLayout extends StatelessWidget {
  final Widget signInForm;

  const LaptopSignInLayout({Key? key, required this.signInForm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner/Teatro_Baralt.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: signInForm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
