import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final void Function(String) onChanged;
  final TextEditingController mailController;
  const EmailFormField({
    super.key,
    required this.validator,
    required this.onChanged,
    required this.mailController,
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
      autocorrect: true,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
