import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sing_up/sing_up_bloc.dart';
import 'package:know_my_city/injection.dart';

class SignUpDialog extends StatefulWidget {
  const SignUpDialog({super.key});
  @override
  State<SignUpDialog> createState() => _SignUpDialogState();
}

class _SignUpDialogState extends State<SignUpDialog>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late SingUpBloc _signUpBloc; // Corregido SingUpBloc a SignUpBloc
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _signUpBloc = sl<SingUpBloc>(); // Corregido SingUpBloc a SignUpBloc
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _animationController.forward();
  }

  // Función para mostrar el AlertDialog en caso de error
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

  // Código para cerrar el diálogo con animación en reversa
  void _closeWithReverseDialog() {
    _animationController.reverse();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        Navigator.of(context).pop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingUpBloc, SingUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              final errorMessage = failure.map(
                cancelledByUser: (e) => 'Cancelado por el usuario',
                serverError: (e) => 'Error del servidor',
                emailAlreadyInUse: (e) => 'El correo ya está en uso',
                invalidEmailAndPasswordCombination: (e) =>
                    'Combinación de correo y contraseña incorrectos',
                otpExpired: (e) =>
                    'El código OTP ha expirado, inténtelo de nuevo',
                emailLinkExpired: (e) =>
                    'El enlace ha expirado, solicite uno nuevo',
                emailNotVerified: (e) => 'Correo electrónico no verificado',
              );
              _showErrorDialog(
                  errorMessage); // Usando errorMessage en lugar de message_error
            },
            (success) {
              // Lógica para cuando el proceso de registro es exitoso
              _closeWithReverseDialog();
              // Aquí puedes navegar a otra pantalla si es necesario
            },
          ),
        );
      },
      builder: (context, state) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 1), // Comienza fuera de la pantalla
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          )),
          child: Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.95,
              padding: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Paso #1 - Registro de correo',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      // Email field
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          labelText: 'Correo electrónico',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        autocorrect: false,
                        onChanged: (email) {
                          _signUpBloc.add(SingUpEvent.emailChanged(
                              _emailController
                                  .text)); // Corregido SingUpEvent a SignUpEvent
                        },
                        validator: (email) {
                          return _signUpBloc.state.emailAddress.value.fold(
                            (failure) => failure.maybeMap(
                              invalidEmail: (_) => 'Formato de correo inválido',
                              orElse: () => null,
                            ),
                            (_) => null,
                          );
                        },
                      ),
                      const SizedBox(height: 16.0),
                      // Password field
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'Contraseña',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        obscureText: true,
                        onChanged: (password) {
                          _signUpBloc.add(SingUpEvent.passwordChanged(
                              _passwordController
                                  .text)); // Corregido SingUpEvent a SignUpEvent
                        },
                        validator: (password) {
                          return _signUpBloc.state.password.value.fold(
                            (failure) => failure.maybeMap(
                              missingNumberPassword: (_) =>
                                  'La contraseña debe contener un número',
                              missingSpecialSymbol: (_) =>
                                  'La contraseña debe tener un carácter especial',
                              missingUppercase: (_) =>
                                  'La contraseña debe contener una mayúscula',
                              shortPassword: (_) =>
                                  'La contraseña es muy corta, debe tener al menos 8 caracteres',
                              orElse: () => null,
                            ),
                            (_) => null,
                          );
                        },
                      ),
                      const SizedBox(height: 16.0),
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
                                  print(_signUpBloc.state.emailAddress
                                      .toString());
                                  print(_signUpBloc.state.password.toString());
                                  if (formKey.currentState!.validate()) {
                                    _signUpBloc
                                        .add(const SingUpEvent.signUpMail());
                                  }
                                },
                                child: const Text('Registro de correo'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
