import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/dialogs/phone_dialog.dart';

class MailVerificationDialog extends StatelessWidget {
  const MailVerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        width: 450,
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Verifica tu correo',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Revisa tu correo y haz clic en el enlace de verificación. El proceso avanzará automáticamente.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            ),
            const SizedBox(height: 20),
            TimerScreen(),
          ],
        ),
      ),
    );
  }
}


class TimerScreen extends StatefulWidget {
  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  int _start = 30;
  late Timer _timer;
  late SignUpBloc _signUpBloc;

  @override
  void initState() {
    super.initState();
    _signUpBloc = sl<SignUpBloc>();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: _start),
    );
    startTimer();
    _controller.forward();
  }

  void emailIsVerified() {
  showDialog(
    context: context,
    barrierDismissible: false,  // No permite cerrar el diálogo al hacer clic fuera
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                '¡Verificación Exitosa!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Tu correo ha sido verificado correctamente. Ahora puedes empezar a explorar.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Cierra el diálogo
                },
                child: const Text(
                  'Aceptar',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}


  void emailIsNotVerified() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Tiempo Finalizado'),
          content: const Text('No se verificó tu correo.'),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Cierra este diálogo
                Navigator.of(context).pop(); // Cierra el MailVerificationDialog
              },
            ),
          ],
        );
      },
    );
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start > 0) {
        setState(() {
          _start--;
        });
      } else {
        _signUpBloc.add(SignUpEvent.mailVerification());
        _timer.cancel();
        _controller.stop();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(() => {}, (ifSome) {
          ifSome.fold((failure) {
            emailIsNotVerified();
          }, (success) {
            Navigator.of(context).pop();
            emailIsVerified();
          });
        });
      },
      builder: (context, state) {
        return Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    value: _controller.value,
                    strokeWidth: 6.0,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '$_start segundos',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

