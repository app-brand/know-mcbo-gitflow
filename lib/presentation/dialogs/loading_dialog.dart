import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoadingDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.95,
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Verificando correo y contrasena..'),
                SizedBox(
                  height: 10,
                ),
                CircularProgressIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
