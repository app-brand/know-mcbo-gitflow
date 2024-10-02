import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sing_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/dialogs/sign_up_dialog.dart';
import 'package:know_my_city/presentation/widgets/email_form_field.dart';
import 'package:know_my_city/presentation/widgets/password_form_field.dart';

class SignInDialog extends StatefulWidget {
  @override
  State<SignInDialog> createState() => _SignInDialog();
}

class _SignInDialog extends State<SignInDialog>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  late SignInBloc _signInBloc;
  late AnimationController _animationController;

  void _closeWithReverseDialog() {
    _animationController.reverse();
    _animationController.addStatusListener((listener) {
      if (listener == AnimationStatus.dismissed) {
        Navigator.of(context).pop();
      }
    });
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _signInBloc = sl<SignInBloc>();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.95,
        padding: const EdgeInsets.all(20),
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Form(
                child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // TODO: tarea uno crear los diseno W,T,M.
                  // Crear widget - Diseno X3
                  const Text('Iniciar sesion',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 10.0),
                  EmailFormField(
                    onChanged: (email) {
                      _signInBloc.add(
                        SignInEvent.emailChanged(
                          email,
                        ),
                      );
                    },
                    validator: (email) {
                      return _signInBloc.state.emailAddress.value.fold(
                        (ifLeft) => ifLeft.maybeMap(
                          invalidEmail: (ifLeft) => 'Correo invalido',
                          orElse: () => 'Campo vacio',
                        ),
                        (ifRight) => ifRight,
                      );
                    },
                  ),
                  const SizedBox(height: 10.0),
                  PasswordFormField(
                      validator: (password) {
                        return _signInBloc.state.password.value.fold(
                          (ifLeft) {
                            final failure_message = ifLeft.maybeMap(
                                missingNumberPassword: (ifLeft) =>
                                    'La contrasena necesita un numero',
                                missingSpecialSymbol: (ifLeft) =>
                                    'La contrasena necesita un caracter especial, como #\$&...',
                                missingUppercase: (ifLeft) =>
                                    'La contrasena necesita un caracter o letra en mayuscula',
                                orElse: () => 'Campo vacio');
                            _showErrorDialog(failure_message);
                          },
                          (ifRight) => (ifRight),
                        );
                      },
                      onChanged: (password) => _signInBloc.add(
                            SignInEvent.passwordChanged(
                              password,
                            ),
                          )),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () => _closeWithReverseDialog(),
                            child: const Text('Cancelar'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                _signInBloc
                                    .add(const SignInEvent.singInEmail());
                              }
                            },
                            child: const Text('Iniciar sesion'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      TextButton(
                        onPressed: () {
                          // Aquí irá la lógica para ir al diálogo de recuperar contraseña
                        },
                        child: const Text('Recuperar Contraseña'),
                      ),
                      const SizedBox(height: 10.0),
                      TextButton(
                        onPressed: () {
                          //_closeWithReverseDialog();
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const SignUpDialog();
                            },
                          );
                        },
                        child: const Text('Registrarse'),
                      ),
                    ],
                  )
                ],
              ),
            ))),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}
