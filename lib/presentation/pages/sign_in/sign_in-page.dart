import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/pages/loading/loading_page.dart';
import 'package:know_my_city/presentation/pages/sign_in/responsive/sign_in_laptop.dart';
import 'package:know_my_city/presentation/pages/sign_in/responsive/sign_in_mobile.dart';
import 'package:know_my_city/presentation/pages/sign_in/responsive/sign_in_tablet.dart';
import 'package:know_my_city/legacy-code/presentation-legacy/widgets/email_form_field.dart';
import 'package:know_my_city/legacy-code/presentation-legacy/widgets/password_form_field.dart';

const double kMobileBreakpoint = 700;
const double kTabletBreakpoint = 1200;

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final formKey = GlobalKey<FormState>();
  late SignInBloc _signInBloc;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _signInBloc = sl<SignInBloc>();
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
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void _successSignInDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Inicio exitoso!'),
        content: const Text('Bienvenido'),
        actions: [
          TextButton(
            onPressed: () =>
                Navigator.of(context).popUntil((route) => route.isFirst),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Se construye el formulario aplicando un factor [fontScale] para ajustar dinámicamente el tamaño de la fuente.
  Widget _buildSignInForm(double fontScale) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Iniciar Sesión',
            style: TextStyle(
              fontSize: 20 * fontScale,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 10.0),
          EmailFormField(
            mailController: _emailController,
            onChanged: (email) =>
                _signInBloc.add(SignInEvent.emailChanged(email)),
            validator: (email) => _signInBloc.state.emailAddress.value.fold(
              (failure) => failure.message,
              (_) => null,
            ),
          ),
          const SizedBox(height: 10.0),
          PasswordFormField(
            passwordController: _passwordController,
            validator: (password) => _signInBloc.state.password.value.fold(
              (failure) => failure.message,
              (_) => null,
            ),
            onChanged: (password) =>
                _signInBloc.add(SignInEvent.passwordChanged(password)),
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
                  onPressed: () {
                    context.push('/signUp');
                  },
                  child: Text(
                    'Registro',
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
                      _signInBloc.add(const SignInEvent.singInEmail());
                    }
                  },
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      fontSize: 16 * fontScale,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15.0),
          TextButton(
            onPressed: () {},
            child: Text(
              '¿Olvidaste tu contraseña?',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 15 * fontScale,
                decoration: TextDecoration.underline,
              ),
            ),
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
      return MobileSignInLayout(signInForm: _buildSignInForm(fontScale));
    } else if (constraints.maxWidth < kTabletBreakpoint) {
      fontScale = 1.2;
      return TabletSignInLayout(signInForm: _buildSignInForm(fontScale));
    } else {
      fontScale = 1.4;
      return LaptopSignInLayout(signInForm: _buildSignInForm(fontScale));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      bloc: _signInBloc,
      listener: (context, state) {
        state.userFailureOrUserSuccess.fold(
          () {},
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) {
              failure.map(
                cancelledByUser: (f) => _showErrorDialog(f.message),
                invalidEmailAndPasswordCombination: (e) =>
                    _showErrorDialog(e.message),
                emailNotVerified: (e) => _showErrorDialog(e.message),
                otpExpired: (e) => _showErrorDialog(e.message),
                emailLinkExpired: (e) => _showErrorDialog(e.message),
                serverError: (e) => _showErrorDialog(e.message),
              );
            },
            (_) {
              _successSignInDialog();
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.isSubmitting
              ? LoadingPage(
                  text:
                      'Ingresando mediante el sistema cerrado de autenticación',
                  content: 'Validando la combinación de correo de usuario',
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
