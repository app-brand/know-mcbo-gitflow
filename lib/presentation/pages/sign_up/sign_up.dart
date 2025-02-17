import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/pages/loading/loading_page.dart';
import 'package:know_my_city/presentation/pages/sign_up/responsive/sign_up_laptop.dart';
import 'package:know_my_city/presentation/pages/sign_up/responsive/sign_up_mobile.dart';
import 'package:know_my_city/presentation/pages/sign_up/responsive/sign_up_tablet.dart';
import 'package:know_my_city/legacy-code/presentation-legacy/widgets/email_form_field.dart';
import 'package:know_my_city/legacy-code/presentation-legacy/widgets/password_form_field.dart';

const double kMobileBreakpoint = 700;
const double kTabletBreakpoint = 1200;

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  late SignUpBloc _signUpBloc;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _signUpBloc = sl<SignUpBloc>();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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
    context.go('/mail_verification');
  }

  /// Se construye el formulario aplicando un factor [fontScale] para ajustar dinámicamente el tamaño de la fuente.
  Widget _buildSignUpForm(double fontScale) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Registro de Correo - Paso #1',
            style: TextStyle(
              fontSize: 20 * fontScale,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10.0),
          EmailFormField(
            mailController: _emailController,
            onChanged: (email) {
              _signUpBloc.add(SignUpEvent.emailChanged(email));
            },
            validator: (email) {
              return _signUpBloc.state.emailAddress.value.fold(
                (failure) => failure.message,
                (_) => null,
              );
            },
          ),
          const SizedBox(height: 10.0),
          PasswordFormField(
            passwordController: _passwordController,
            validator: (password) {
              return _signUpBloc.state.password.value.fold(
                (failure) => failure.message,
                (_) => null,
              );
            },
            onChanged: (password) {
              _signUpBloc.add(SignUpEvent.passwordChanged(password));
            },
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    backgroundColor: Colors.grey[700],
                    foregroundColor: Colors.white,
                    elevation: 4,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(
                    'Cancelar',
                    style: TextStyle(
                      fontSize: 16 * fontScale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    backgroundColor: Colors.teal[600],
                    foregroundColor: Colors.white,
                    elevation: 4,
                    shadowColor: Colors.teal.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      _signUpBloc.add(const SignUpEvent.signUpMail());
                    }
                  },
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                      fontSize: 16 * fontScale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Se utiliza el LayoutBuilder para determinar el ancho y calcular el factor de fuente.
  Widget _buildResponsiveLayout(BoxConstraints constraints) {
    double fontScale;
    if (constraints.maxWidth < kMobileBreakpoint) {
      fontScale = 0.8;
      return MobileSignUpLayout(signUpForm: _buildSignUpForm(fontScale));
    } else if (constraints.maxWidth < kTabletBreakpoint) {
      fontScale = 1.2;
      return TabletSignUpLayout(signUpForm: _buildSignUpForm(fontScale));
    } else {
      fontScale = 1.4;
      return LaptopSignUpLayout(signUpForm: _buildSignUpForm(fontScale));
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
              _showErrorDialog(failure.message);
            },
            (success) {
              _showSuccessDialog();
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.isSubmitting
              ? LoadingPage(
                  text: 'Ingresando el correo y contraseña a la base de datos',
                  content:
                      'Recuerde validar el correo en el tiempo marcado o repetir el proceso desde el principio',
                )
              : LayoutBuilder(
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
