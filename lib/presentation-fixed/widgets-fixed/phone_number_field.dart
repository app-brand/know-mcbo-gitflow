import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class PhoneNumberField extends StatefulWidget {
  final String? Function(String?)? validator;
  final void Function(String) onChanged;
  final TextEditingController phoneController;

  const PhoneNumberField({
    Key? key,
    required this.validator,
    required this.onChanged,
    required this.phoneController,
  }) : super(key: key);

  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String _countryCode = "+58";
  String complete_number = "";
  // Código de país por defecto

  /// Combina el código del país con el número ingresado
  String _combinedPhoneNumber() {
    complete_number = _countryCode + widget.phoneController.text;
    return _countryCode + widget.phoneController.text;
  }

  /// Muestra el selector de países para elegir el código
  void _selectCountry() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      showWorldWide: true,
      onSelect: (country) {
        setState(() {
          _countryCode = "+${country.phoneCode}";
        });
        // Se actualiza el valor completo al cambiar el código
        widget.onChanged(_combinedPhoneNumber());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Botón para seleccionar el código de país
        GestureDetector(
          onTap: _selectCountry,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              _countryCode,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        const SizedBox(width: 10),
        // Campo para el número de teléfono
        Expanded(
          child: TextFormField(
            controller: widget.phoneController,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.phone),
              labelText: 'Número móvil',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              // Se envía el número completo (código + número)
              widget.onChanged(_combinedPhoneNumber());
            },
            validator: widget.validator,
          ),
        ),
      ],
    );
  }
}
