import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';

class MailVerificationDialog extends StatelessWidget {
  const MailVerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              children: [TimerScreen()],
            ),
          ),
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
  int _start = 60;
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
      builder: (context) {
        return AlertDialog(
          title: const Text('Correo validado'),
          content: const Text('Por favor, prosiga a validar su telefono'),
          actions: [
            TextButton(
              onPressed: () {
                // TODO: Modificar para continuar con la
                // Validacion telefonica
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void emailIsNotVerified() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tiempo Finalizado'),
          content: Text('Correo no validado'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                // TODO: cerrar todo - idealmente retornar a login_dialog
                Navigator.of(context).pop();
                Navigator.of(context).pop();
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
            print('failure - ui - mail is not verified');
            emailIsNotVerified();
          }, (success) {
            emailIsVerified();
            print('exitoso en metodo - ui - mail verified');
          });
        });
      },
      builder: (context, state) {
        return Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Por favor valida el correo, revisando su bandeja de entrada y hacer click al link se verifica su cuenta automaticamente'),
                  SizedBox(height: 12),
                  CircularProgressIndicator(
                    value: _controller.value,
                    strokeWidth: 8.0,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '$_start segundos',
                    style: TextStyle(fontSize: 20),
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
