import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/dialogs/loading_dialog.dart';
import 'package:know_my_city/presentation/dialogs/sign_up_dialog.dart';
import 'package:know_my_city/presentation/widgets/email_form_field.dart';
import 'package:know_my_city/presentation/widgets/password_form_field.dart';

class SignInDialog extends StatefulWidget {
  const SignInDialog({super.key});
  @override
  State<SignInDialog> createState() => _SignInDialog();
}

class _SignInDialog extends State<SignInDialog>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  late SignInBloc _signInBloc;
  late AnimationController _animationController;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _signInBloc = sl<SignInBloc>();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationController.addStatusListener((listener) {
      if (listener == AnimationStatus.dismissed) {
        Navigator.of(context).pop();
      }
    });
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

  void _successSignInDialog() {
    _animationController.reverse();
    _animationController.addStatusListener((listener) {
      if (listener == AnimationStatus.dismissed) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Inicio exitoso!'),
              content: const Text('Bienvenido'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
        bloc: _signInBloc,
        listener: (context, state) {
          ///_loadingDialog(state.isSubmitting);
          state.userFailureOrUserSuccess.fold(() => {}, (ifSome) {
            ifSome.fold((failure) {
              print('failure - ui - sign_in');
              _showErrorDialog(failure.message);
            }, (success) {
              print('exitoso - ui - sign_in');
              _successSignInDialog();
            });
          });
        },
        builder: (context, state) => Builder(builder: (context) {
              if (state.isSubmitting) {
                return LoadingDialog(
                  text:
                      'Ingresando mediante el sistema cerrada de autenticacion',
                  content: 'Validando la combinacion de correo de usuario',
                  onConfirm: () {},
                  onCancel: () {},
                );
              } else {
                return SlideTransition(
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
                      child: Center(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        /*TODO: #1 tarea uno crear los diseno W,T,M.
                                         Crear tres propuestas graficas*/
                                        const Text('Iniciar sesion',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        const SizedBox(height: 10.0),
                                        EmailFormField(
                                          mailController: _emailController,
                                          onChanged: (email) {
                                            _signInBloc.add(
                                              SignInEvent.emailChanged(
                                                email,
                                              ),
                                            );
                                          },
                                          validator: (email) {
                                            return _signInBloc
                                                .state.emailAddress.value
                                                .fold(
                                              (failure) {
                                                print(
                                                    'failed: ${failure.message}');
                                                return failure.message;
                                              },
                                              (email) {
                                                print('success: ${email}}');
                                                return null;
                                              },
                                            );
                                          },
                                        ),
                                        const SizedBox(height: 10.0),
                                        PasswordFormField(
                                            passwordController:
                                                _passwordController,
                                            validator: (password) {
                                              return state.password.value.fold(
                                                (failure) {
                                                  print(
                                                      'failed: ${failure.message}');
                                                  return failure.message;
                                                },
                                                (password) {
                                                  print('success: ${password}');
                                                },
                                              );
                                            },
                                            onChanged: (password) =>
                                                _signInBloc.add(
                                                  SignInEvent.passwordChanged(
                                                    password,
                                                  ),
                                                )),
                                        const SizedBox(height: 10.0),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                      _signInBloc.add(
                                                          const SignInEvent
                                                              .singInEmail());
                                                    }
                                                  },
                                                  child: const Text(
                                                      'Iniciar sesion'),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 10.0),
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                  'Recuperar Contraseña'),
                                            ),
                                            const SizedBox(height: 10.0),
                                            TextButton(
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return SignUpDialog();
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
                      ),
                    ),
                  ),
                );
              }
            }));
  }
}
