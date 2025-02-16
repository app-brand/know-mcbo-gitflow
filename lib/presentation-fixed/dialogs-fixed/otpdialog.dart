import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

const double kMobileBreakpoint = 600;

class OtpDialog extends StatefulWidget {
  const OtpDialog({super.key});

  @override
  State<OtpDialog> createState() => _OtpDialogState();
}

class _OtpDialogState extends State<OtpDialog> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Éxito'),
        content: const Text('OTP verificado exitosamente.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < kMobileBreakpoint;
          return Container(
            width: isMobile
                ? MediaQuery.of(context).size.width * 0.95
                : MediaQuery.of(context).size.width * 0.5,
            height: isMobile
                ? MediaQuery.of(context).size.height * 0.6
                : MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Ingrese el OTP',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20),
                        PinCodeTextField(
                          appContext: context,
                          length: 6,
                          controller: _otpController,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            fieldWidth: 40,
                            activeFillColor: Colors.white,
                            selectedFillColor: Colors.white,
                            inactiveFillColor: Colors.white,
                            activeColor: Colors.teal,
                            selectedColor: Colors.teal,
                            inactiveColor: Colors.grey,
                          ),
                          animationDuration: const Duration(milliseconds: 300),
                          backgroundColor: Colors.transparent,
                          enableActiveFill: true,
                          onCompleted: (v) {
                            // Aquí puedes agregar la lógica para verificar el OTP
                            _showSuccessDialog();
                          },
                          onChanged: (value) {},
                          beforeTextPaste: (text) {
                            return true;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            backgroundColor: Colors.teal[600],
                            foregroundColor: Colors.white,
                            elevation: 4,
                            shadowColor: Colors.teal.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              // Aquí puedes agregar la lógica para verificar el OTP
                              _showSuccessDialog();
                            }
                          },
                          child: const Text(
                            'Verificar OTP',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}