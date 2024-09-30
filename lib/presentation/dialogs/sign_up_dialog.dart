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
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        Navigator.of(context).pop();
      }
    });
  }

  void _showSuccessDialog() {
    // Activando animacion en reversa
    //_closeWithReverseDialog();
    // Cierra el diálogo de login primero
    // Luego muestra el AlertDialog de éxito al terminar la animacion de salida
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Sign-up successful!'),
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingUpBloc, SingUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              // Mostrar AlertDialog en caso de error
              final errorMessage = failure.map(
                cancelledByUser: (_) => 'Cencelado por el usuario',
                serverError: (_) => 'Error de servidor',
                emailAlreadyInUse: (_) => 'Correo en uso',
                invalidEmailAndPasswordCombination: (_) =>
                    'Conbinacion invalida de contrasena y usuario',
                otpExpired: (_) => 'Codigo SMS expiro',
                emailLinkExpired: (_) => 'Link de validacion expiro',
                emailNotVerified: (_) => 'Email no esta verificado',
              );
              _showErrorDialog(errorMessage);
              //_closeWithReverseDialog(); // Muestra el diálogo con el error
            },
            (_) {
              // Si el inicio de sesión fue exitoso, mostrar el diálogo de éxito
              //_showSuccessDialog();
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

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});
  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification>
    with SingleTickerProviderStateMixin {
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingUpBloc, SingUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        // TOD
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
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: MediaQuery.of(context).size.height * 0.95,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Paso #2 - Valida el correo',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'Por favor visita tu bandeja de correo y presiona el link que se te envio, para validar el correo',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      _signUpBloc.add(const SingUpEvent.mailVerification());
                    },
                    child: const Text('Verificar correo'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
