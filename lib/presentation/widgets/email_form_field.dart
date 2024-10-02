import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final void Function(String) onChanged;
  const EmailFormField({
    super.key,
    required this.validator,
    required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email),
        labelText: 'Correo electronico',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      autocorrect: false,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
