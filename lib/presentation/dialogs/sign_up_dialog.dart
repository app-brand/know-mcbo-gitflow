import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sing_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/dialogs/loading_dialog.dart';
import 'package:know_my_city/presentation/widgets/email_form_field.dart';
import 'package:know_my_city/presentation/widgets/password_form_field.dart';

class SignUpDialog extends StatefulWidget {
  const SignUpDialog({super.key});
  @override
  State<SignUpDialog> createState() => _SignUpDialog();
}

class _SignUpDialog extends State<SignUpDialog>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  late SignUpBloc _signUpBloc;
  late AnimationController _animationController;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _signUpBloc = sl<SignUpBloc>();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _animationController.dispose();
    super.dispose();
  }

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

  void _showSuccessDialog() {
    _closeWithReverseDialog();
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Paso #1 - exitoso!'),
          content: const Text('Por favor continue'),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(), // Cierra el diálogo de éxito
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _loadingDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return LoadingDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
        bloc: _signUpBloc,
        listener: (context, state) {
          state.userFailureOrUserSuccess.fold(
              () => {},
              (ifSome) => {
                    ifSome.fold((failure) {
                      _loadingDialog();
                      Navigator.of(context).pop();
                      _showErrorDialog(failure.message);
                    }, (ifRight) {
                      _loadingDialog();
                      Navigator.of(context).pop();
                      _showSuccessDialog();
                    })
                  });
        },
        builder: (context, state) => SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1), // Comienza fuera de la pantalla
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _animationController,
                curve: Curves.easeInOut,
              )),
              child: Dialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.95,
                    padding: const EdgeInsets.all(20),
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Form(
                            key: formKey,
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // TODO: tarea uno crear los diseno W,T,M.
                                  // Crear widget - Diseno X3
                                  const Text('Registro de correo - paso #1',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  const SizedBox(height: 10.0),
                                  EmailFormField(
                                    mailController: _emailController,
                                    onChanged: (email) {
                                      _signUpBloc.add(
                                        SignUpEvent.emailChanged(
                                          email,
                                        ),
                                      );
                                    },
                                    validator: (email) {
                                      return _signUpBloc
                                          .state.emailAddress.value
                                          .fold(
                                        (failure) {
                                          print('failed: ${failure.message}');
                                          return failure.message;
                                        },
                                        (email) {
                                          print('success: ${email}}');
                                        },
                                      );
                                    },
                                  ),
                                  const SizedBox(height: 10.0),
                                  PasswordFormField(
                                      passwordController: _passwordController,
                                      validator: (password) {
                                        return state.password.value.fold(
                                          (failure) {
                                            print('failed: ${failure.message}');
                                            return failure.message;
                                          },
                                          (password) {
                                            print('success: ${password}');
                                          },
                                        );
                                      },
                                      onChanged: (password) => _signUpBloc.add(
                                            SignUpEvent.passwordChanged(
                                              password,
                                            ),
                                          )),
                                  const SizedBox(height: 10.0),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              _closeWithReverseDialog();
                                            },
                                            child: const Text('Cancelar'),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                _signUpBloc.add(
                                                    const SignUpEvent
                                                        .signUpMail());
                                              }
                                            },
                                            child: const Text('Registrarse'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ))),
                  ),
                ),
              ),
            ));
  }
}
