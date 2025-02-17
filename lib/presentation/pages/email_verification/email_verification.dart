import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/pages/email_verification/responsive/email_verification_laptop.dart';
import 'package:know_my_city/presentation/pages/email_verification/responsive/email_verification_mobile.dart';
import 'package:know_my_city/presentation/pages/email_verification/responsive/email_verification_tablet.dart';

const double kMobileBreakpoint = 700;
const double kTabletBreakpoint = 1200;

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({Key? key}) : super(key: key);

  @override
  _EmailVerificationPageState createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage>
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
                context.go('/signUp');
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

  /// Se construye el contenido de verificación aplicando un factor [fontScale]
  /// para ajustar dinámicamente el tamaño de la fuente.
  Widget _buildVerificationContent(double fontScale) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Por favor, valida tu correo electrónico",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18 * fontScale,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          "Revisa tu bandeja de entrada y haz clic en el enlace para verificar tu cuenta.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16 * fontScale,
            color: Colors.black54,
          ),
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
          style: TextStyle(
            fontSize: 20 * fontScale,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ],
    );
  }

  /// Se utiliza el LayoutBuilder para determinar el ancho y calcular el factor de fuente.
  Widget _buildResponsiveLayout(BoxConstraints constraints) {
    double fontScale;
    if (constraints.maxWidth < kMobileBreakpoint) {
      fontScale = 0.3;
      return MobileEmailVerificationLayout(
          content: _buildVerificationContent(fontScale));
    } else if (constraints.maxWidth < kTabletBreakpoint) {
      fontScale = 1.2;
      return TabletEmailVerificationLayout(
          content: _buildVerificationContent(fontScale));
    } else {
      fontScale = 1.4;
      return LaptopEmailVerificationLayout(
          content: _buildVerificationContent(fontScale));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(
          () {},
          (result) => result.fold(
            (failure) {
              _emailIsNotVerified();
            },
            (success) {
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
              },
            ),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: _buildResponsiveLayout(constraints),
              );
            },
          ),
        );
      },
    );
  }
}
