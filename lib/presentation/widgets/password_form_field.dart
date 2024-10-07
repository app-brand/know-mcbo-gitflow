import 'package:flutter/material.dart';

class PasswordFormField extends StatelessWidget {
  final String? Function(String?)? validator;
  final void Function(String) onChanged;
  final TextEditingController passwordController;
  const PasswordFormField({
    super.key,
    required this.validator,
    required this.onChanged,
    required this.passwordController,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.email),
        labelText: 'Contrasena',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      obscureText: true,
      autocorrect: true,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
