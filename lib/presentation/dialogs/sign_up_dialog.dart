import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/dialogs/loading_dialog.dart';
import 'package:know_my_city/presentation/dialogs/mail_check_dialog.dart';
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
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
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

  void _showSuccessDialog() {
    Navigator.of(context).popUntil((route) => route.isFirst);
    showDialog(
      context: context,
      builder: (context) {
        return const MailVerificationDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(
          () => {},
          (ifSome) => ifSome.fold(
            (failure) {
              _showErrorDialog(failure.message);
            },
            (success) {
              _showSuccessDialog();
            },
          ),
        );
      },
      builder: (context, state) => Builder(
        builder: (context) {
          if (state.isSubmitting) {
            return LoadingDialog(
              text: 'Ingresando el correo y contraseña a la base de datos',
              content:
                  'Recuerde validar el correo en el tiempo marcado o repetir el proceso desde el principio',
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
                  borderRadius: BorderRadius.circular(16),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: Row(
                    children: [
                      // Sección del formulario (lado izquierdo)
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),                                  
                                ),
                                ),
                          child: Form(
                            key: formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Registro de Correo - Paso #1',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                EmailFormField(
                                  mailController: _emailController,
                                  onChanged: (email) {
                                    _signUpBloc.add(
                                      SignUpEvent.emailChanged(email),
                                    );
                                  },
                                  validator: (email) {
                                    return _signUpBloc
                                        .state.emailAddress.value
                                        .fold(
                                      (failure) => failure.message,
                                      (_) => null,
                                    );
                                  },
                                ),
                                const SizedBox(height: 10.0),
                                PasswordFormField(
                                  passwordController: _passwordController,
                                  validator: (password) {
                                    return _signUpBloc.state.password.value
                                        .fold(
                                      (failure) => failure.message,
                                      (_) => null,
                                    );
                                  },
                                  onChanged: (password) =>
                                      _signUpBloc.add(
                                    SignUpEvent.passwordChanged(password),
                                  ),
                                ),
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
                                        shadowColor:
                                            Colors.grey.withOpacity(0.5),
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
                                        shadowColor:
                                            Colors.teal.withOpacity(0.5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      onPressed: () {
                                        if (formKey.currentState!.validate()) {
                                          _signUpBloc.add(
                                              const SignUpEvent.signUpMail());
                                        }
                                      },
                                      child: const Text(
                                        'Registrarse',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Sección de imagen (lado derecho)
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/banner/Puente_de_Maracaibo.jpg'), // Asegúrate de que esta imagen existe
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
