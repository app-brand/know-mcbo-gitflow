import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/application/sing_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/dialogs/sign_up_dialog.dart';

class LoginDialog extends StatefulWidget {
  const LoginDialog({super.key});
  @override
  State<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog>
    with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late SignInBloc _signInBloc;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _signInBloc = sl<SignInBloc>();
    // Animación de entrada más lenta (800ms)
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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

  void _closeWithReverseDialog() {
    _animationController.reverse();
    _animationController.addStatusListener((listener) {
      if (listener == AnimationStatus.dismissed) {
        Navigator.of(context).pop();
      }
    });
  }

  // Función para mostrar el AlertDialog de éxito y cerrar el diálogo de login
  void _showSuccessDialog() {
    // Activando animacion en reversa
    _closeWithReverseDialog();
    // Cierra el diálogo de login primero
    // Luego muestra el AlertDialog de éxito al terminar la animacion de salida
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Sign-in successful!'),
          actions: [
            TextButton(
              onPressed: () =>
                  context.go('/maps'), // Cierra el diálogo de éxito
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      bloc: _signInBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              // Mostrar AlertDialog en caso de error
              final errorMessage = failure.map(
                cancelledByUser: (_) => 'Sign in cancelled',
                serverError: (_) => 'Server error. Try again later.',
                emailAlreadyInUse: (_) => 'Email is already in use.',
                invalidEmailAndPasswordCombination: (_) =>
                    'Invalid email/password combination',
                otpExpired: (_) => 'Otp expired',
                emailLinkExpired: (_) => 'Invalid email verification',
                emailNotVerified: (_) => 'Email is not verified',
              );
              _showErrorDialog(errorMessage); // Muestra el diálogo con el error
            },
            (_) {
              print('todo-ok');
              // Si el inicio de sesión fue exitoso, mostrar el diálogo de éxito
              _showSuccessDialog();
            },
          ),
        );
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
                  children: [
                    const Text(
                      'Iniciar sesion',
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
                        labelText: 'Correo electronico',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      autocorrect: false,
                      onChanged: (email) {
                        _signInBloc.add(
                            SignInEvent.emailChanged(_emailController.text));
                      },
                      validator: (email) {
                        return _signInBloc.state.emailAddress.value.fold(
                          (failure) => failure.maybeMap(
                            invalidEmail: (_) => 'Formato de correo invalido',
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
                        _signInBloc.add(SignInEvent.passwordChanged(password));
                      },
                      validator: (password) {
                        return _signInBloc.state.password.value.fold(
                          (failure) => failure.maybeMap(
                            missingNumberPassword: (_) =>
                                'Contrasena debe contener un numero',
                            missingSpecialSymbol: (_) =>
                                'Contrasena debe tener un caracter especial',
                            missingUppercase: (_) =>
                                'Contrasena debe contener una mayuscula',
                            shortPassword: (_) =>
                                'Contrasena es muy corta, por lo menos 8 caracteres',
                            orElse: () => null,
                          ),
                          (_) => null,
                        );
                      },
                    ),
                    const SizedBox(height: 24.0),
                    // Submit and Cancel buttons
                    if (state.isSubmitting)
                      const CircularProgressIndicator()
                    else
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
                                        context.go('/maps');
                                  }
                                },
                                child: const Text('Iniciar sesion'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          // Botón para ir a "Recuperar Contraseña"
                          TextButton(
                            onPressed: () {
                              // Aquí irá la lógica para ir al diálogo de recuperar contraseña
                            },
                            child: const Text('Recuperar Contraseña'),
                          ),
                          // Botón para ir a "Registrarse"
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
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
