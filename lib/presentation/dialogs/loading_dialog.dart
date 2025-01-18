import 'package:flutter/material.dart';

class LoadingDialog extends StatelessWidget {
<<<<<<< HEAD
  //TODO: Esta clase se puede mejorar, para dar
  // la opcion al usuario de que puede cancelar
  // una peticion asincrona en el progreso.
=======
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
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
<<<<<<< HEAD
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
=======
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 40),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            CircularProgressIndicator(
              strokeWidth: 4.0,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
            ),
            const SizedBox(height: 16),
            Text(
              content,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),            
          ],
>>>>>>> baaebe3 (09-12-24 Know Maracaibo: Project rebooted - Keys are in .env file)
        ),
      ),
    );
  }
}
