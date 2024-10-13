import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
  //TODO: Esta clase se puede mejorar, para dar
  // la opcion al usuario de que puede cancelar
  // una peticion asincrona en el progreso.
  final String text;
  final String content;
  final VoidCallback onConfirm;
  final VoidCallback onCancel;

  const LoadingDialog({
    super.key,
    required this.text,
    required this.content,
    required this.onConfirm,
    required this.onCancel,
  });

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(text),
                SizedBox(
                  height: 10,
                ),
                CircularProgressIndicator(),
                SizedBox(
                  height: 10,
                ),
                Text(content),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
