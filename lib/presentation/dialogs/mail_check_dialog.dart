import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation-fixed/dialogs-fixed/phone_dialog-fixed.dart';

const double kMobileBreakpoint = 600;

class MailVerificationDialog extends StatelessWidget {
  const MailVerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < kMobileBreakpoint;
          return Container(
            width: isMobile
                ? MediaQuery.of(context).size.width * 0.95
                : MediaQuery.of(context).size.width * 0.5,
            height: isMobile
                ? MediaQuery.of(context).size.height * 0.6
                : MediaQuery.of(context).size.height * 0.4,
            padding: const EdgeInsets.all(20),
            child: Center(
              child: SingleChildScrollView(
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
        },
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
  int _start = 10;
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
        return const PhoneDialog();
      },
    );
  }

  void emailIsNotVerified() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.error_outline,
                  color: Colors.red,
                  size: 60,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Tiempo Finalizado',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Correo no validado. Por favor, inténtalo de nuevo.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    backgroundColor: Colors.teal[600],
                    foregroundColor: Colors.white,
                    elevation: 4,
                    shadowColor: Colors.teal.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'OK',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
            emailIsVerified();
          });
        });
      },
      builder: (context, state) {
        return Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Por favor, valida tu correo electrónico',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'Revisa tu bandeja de entrada y haz clic en el enlace para verificar tu cuenta.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 20),
                CircularProgressIndicator(
                  value: _controller.value,
                  strokeWidth: 8.0,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.teal),
                ),
                SizedBox(height: 20),
                Text(
                  '$_start segundos restantes',
                  style: TextStyle(
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