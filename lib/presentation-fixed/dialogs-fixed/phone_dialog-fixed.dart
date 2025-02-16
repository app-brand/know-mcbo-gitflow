import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:know_my_city/application/profile/profile_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation-fixed/dialogs-fixed/otpdialog.dart';

const double kMobileBreakpoint = 600;

class PhoneDialog extends StatefulWidget {
  const PhoneDialog({super.key});

  @override
  State<PhoneDialog> createState() => _PhoneDialogState();
}

class _PhoneDialogState extends State<PhoneDialog> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  late ProfileBloc _profileBloc;
  String _initialCountry = 'VE';
  PhoneNumber _number = PhoneNumber(isoCode: 'VE');

  @override
  void initState() {
    super.initState();
    _profileBloc = sl<ProfileBloc>();
  }

  @override
  void dispose() {
    _phoneController.dispose();
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
        content: const Text('OTP enviado exitosamente.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              _showOtpDialog();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _showOtpDialog() {
    showDialog(
      context: context,
      builder: (context) => const OtpDialog(),
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
                          'Ingrese su número telefónico',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 20),
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            setState(() {
                              _number = number;
                            });
                          },
                          selectorConfig: const SelectorConfig(
                            selectorType: PhoneInputSelectorType.DROPDOWN,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: const TextStyle(color: Colors.black),
                          initialValue: _number,
                          textFieldController: _phoneController,
                          formatInput: false,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          inputDecoration: InputDecoration(
                            labelText: 'Número telefónico',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese su número telefónico';
                            }
                            return null;
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
                              _profileBloc.add(ProfileEvent.sendOtp());
                              _showSuccessDialog();
                            }
                          },
                          child: const Text(
                            'Enviar OTP',
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