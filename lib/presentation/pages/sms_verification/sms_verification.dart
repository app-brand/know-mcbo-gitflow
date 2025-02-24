import 'package:flutter/material.dart';

class OTPInputWidget extends StatefulWidget {
  /// Callback que se invoca con el OTP completo cuando se presiona el botón.
  final void Function(String otp) onSubmit;

  const OTPInputWidget({Key? key, required this.onSubmit}) : super(key: key);

  @override
  _OTPInputWidgetState createState() => _OTPInputWidgetState();
}

class _OTPInputWidgetState extends State<OTPInputWidget> {
  // Creamos 6 controladores y 6 nodos de foco para cada dígito.
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  @override
  void dispose() {
    // Limpiamos todos los controladores y nodos de foco.
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  // Método para obtener el OTP concatenado de cada controlador.
  String get _otp => _controllers.map((controller) => controller.text).join();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Fila con 6 campos de entrada
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(6, (index) {
            return SizedBox(
              width: 40,
              child: TextField(
                controller: _controllers[index],
                focusNode: _focusNodes[index],
                textAlign: TextAlign.center,
                maxLength: 1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  counterText: '', // Oculta el contador de caracteres
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    // Al ingresar un dígito, mueve el foco al siguiente campo
                    if (index < 5) {
                      _focusNodes[index + 1].requestFocus();
                    } else {
                      _focusNodes[index].unfocus();
                    }
                  } else if (value.isEmpty && index > 0) {
                    // Si el usuario borra el dígito, retrocede el foco
                    _focusNodes[index - 1].requestFocus();
                  }
                },
              ),
            );
          }),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            widget.onSubmit(_otp);
          },
          child: const Text("Submit"),
        ),
      ],
    );
  }
}
