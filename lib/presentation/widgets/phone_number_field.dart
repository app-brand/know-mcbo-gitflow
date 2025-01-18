import 'package:flutter/material.dart';

class PhoneNumberField extends StatefulWidget {
  final String? Function(String?)? validator;
  final void Function(String) onChanged;
  final TextEditingController phoneController;
  const PhoneNumberField({
    super.key,
    required this.validator,
    required this.onChanged,
    required this.phoneController,
  });

  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String? _countryCode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.phone),
            labelText: 'Numero movil',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          keyboardType: TextInputType.number,
          autocorrect: true,
          onChanged: widget.onChanged,
          validator: widget.validator,
        ),
      ],
    );
  }
}
