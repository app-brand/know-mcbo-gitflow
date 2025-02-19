import 'dart:html' as html;
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

void listenToCaptchaMessages() {
  html.window.onMessage.listen((html.MessageEvent event) {
    // Verifica que el mensaje tenga la estructura que esperamos
    if (event.data is Map) {
      final data = event.data as Map;
      if (data['type'] == 'recaptchaSuccess') {
        final token = data['token'];
        print("reCAPTCHA verificado, token: $token");
        // Aquí puedes actualizar el estado de tu aplicación o comunicar este dato al BLoC/Provider
      } else if (data['type'] == 'recaptchaExpired') {
        print("reCAPTCHA expirado, se requiere una nueva validación");
      }
    }
  });
}

class CaptchaView extends StatefulWidget {
  @override
  _CaptchaViewState createState() => _CaptchaViewState();
}

class _CaptchaViewState extends State<CaptchaView> {
  @override
  void initState() {
    super.initState();
    ui.platformViewRegistry.registerViewFactory('captcha-view', (int viewId) {
      final iframe = html.IFrameElement();
      iframe.src = 'captcha.html';
      iframe.style.border = 'none';
      iframe.style.width = '100%';
      iframe.style.height = '100%';
      return iframe;
    });
    listenToCaptchaMessages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Validación reCAPTCHA')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 500,
              height: 500,
              child: HtmlElementView(viewType: 'captcha-view'),
            ),
          ],
        ),
      ),
    );
  }
}
