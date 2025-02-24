import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/pages/sms_verification/sms_verification.dart';

class MyOtpScreen extends StatelessWidget {
  const MyOtpScreen({Key? key}) : super(key: key);

  void _handleSubmit(String otp) {
    print("OTP ingresado: $otp");
    // Aquí puedes llamar a tu lógica de verificación, etc.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ingresa OTP")),
      body: Center(
        child: OTPInputWidget(onSubmit: _handleSubmit),
      ),
    );
  }
}
