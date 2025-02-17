import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';

class MailVerificationScreen extends StatefulWidget {
  const MailVerificationScreen({Key? key}) : super(key: key);

  @override
  _MailVerificationScreenState createState() => _MailVerificationScreenState();
}

class _MailVerificationScreenState extends State<MailVerificationScreen>
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
    )..forward();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start > 0) {
        print(_timer);
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

  void _emailIsVerified() {
    print('Road to the darkness');
    context.go('/phone_profile');
  }

  void _emailIsNotVerified() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text("Tiempo Finalizado"),
          content:
              const Text("Correo no validado. Por favor, inténtalo de nuevo."),
          actions: [
            TextButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text("Volver"),
            ),
          ],
        );
      },
    );
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
        state.userFailureOrUserSuccess.fold(
          () {},
          (ifSome) => ifSome.fold(
            (failure) {
              print('Correo no Validado!');
              _emailIsNotVerified();
            },
            (success) {
              print('Correo Validado!');
              _emailIsVerified();
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Verificación de correo"),
            leading: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  context.go('/signUp');
                }),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Por favor, valida tu correo electrónico",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Revisa tu bandeja de entrada y haz clic en el enlace para verificar tu cuenta.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(height: 20),
                CircularProgressIndicator(
                  value: _controller.value,
                  strokeWidth: 8.0,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.teal),
                ),
                const SizedBox(height: 20),
                Text(
                  "$_start segundos restantes",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
