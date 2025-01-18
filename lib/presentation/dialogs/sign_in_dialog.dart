import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
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
      duration: const Duration(milliseconds: 500),
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
          state.userFailureOrUserSuccess.fold(() => {}, (ifSome) {
            ifSome.fold((failure) {
              _showErrorDialog(failure.message);
            }, (success) {
              _successSignInDialog();
            });
          });
        },
        builder: (context, state) => Builder(builder: (context) {
              if (state.isSubmitting) {
                return LoadingDialog(
                  text:
                      'Ingresando mediante el sistema cerrado de autenticación',
                  content: 'Validando la combinación de correo de usuario',
                  onConfirm: () {},
                  onCancel: () {},
                );
              } else {
                return SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                  ).animate(CurvedAnimation(
                    parent: _animationController,
                    curve: Curves.easeInOut,
                  )),
                  child: Dialog(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Row(
                        children: [
                          // Sección de imagen
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/banner/Teatro_Baralt.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                ),
                              ),
                            ),
                          ),
                          // Sección del formulario
                          Expanded(
                            child: Container(                              
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),                                  
                                ),
                              ),                              
                              child: Form(
                                  key: formKey,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text(
                                        'Iniciar Sesión',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      EmailFormField(
                                        mailController: _emailController,
                                        onChanged: (email) {
                                          _signInBloc.add(
                                            SignInEvent.emailChanged(email),
                                          );
                                        },
                                        validator: (email) {
                                          return _signInBloc
                                              .state.emailAddress.value
                                              .fold(
                                            (failure) => failure.message,
                                            (_) => null,
                                          );
                                        },
                                      ),
                                      const SizedBox(height: 10.0),
                                      PasswordFormField(
                                          passwordController:
                                              _passwordController,
                                          validator: (password) {
                                            return state.password.value.fold(
                                              (failure) => failure.message,
                                              (_) => null,
                                            );
                                          },
                                          onChanged: (password) =>
                                              _signInBloc.add(
                                                SignInEvent.passwordChanged(
                                                    password),
                                              )),
                                      const SizedBox(height: 20.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 12),
                                              backgroundColor: Colors.grey[700],
                                              foregroundColor: Colors.white,
                                              elevation: 4,
                                              shadowColor: Colors.grey.withOpacity(0.5),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: _closeWithReverseDialog,
                                            child: const Text(
                                              'Cancelar',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 20, vertical: 12),
                                              backgroundColor: Colors.teal[600],
                                              foregroundColor: Colors.white,
                                              elevation: 4,
                                              shadowColor: Colors.teal.withOpacity(0.5),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                            ),
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                _signInBloc.add(
                                                    const SignInEvent
                                                        .singInEmail());
                                              }
                                            },
                                            child: const Text(
                                              'Iniciar sesión',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 15.0),
                                      TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          '¿Olvidaste tu contraseña?',
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 14,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 15.0),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return const SignUpDialog();
                                            },
                                          );
                                        },
                                        child: const Text(
                                          '¿No tienes una cuenta? Regístrate',
                                          style: TextStyle(
                                            color: Colors.teal,
                                            fontSize: 14,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            }));
  }
}

