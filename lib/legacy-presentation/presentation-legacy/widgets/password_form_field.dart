import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
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
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: 'Contraseña',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
      obscureText: _obscureText,
      autocorrect: false,
      onChanged: widget.onChanged,
      validator: widget.validator,
    );
  }
}
