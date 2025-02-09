import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/dialogs/loading_dialog.dart';
import 'package:know_my_city/presentation/dialogs/sign_up_dialog.dart';
import 'package:know_my_city/presentation/widgets/email_form_field.dart';
import 'package:know_my_city/presentation/widgets/password_form_field.dart';

const double kMobileBreakpoint = 600;

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  final formKey = GlobalKey<FormState>();
  late SignInBloc _signInBloc;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
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
    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.addStatusListener(_animationStatusListener);
    _animationController.forward();
  }

  void _animationStatusListener(AnimationStatus status) {
    if (status == AnimationStatus.dismissed) {
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _animationController.removeStatusListener(_animationStatusListener);
    _animationController.dispose();
    super.dispose();
  }

  void _closeWithReverseDialog() {
    _animationController.reverse();
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
    _animationController.reverse();
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
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
    });
  }

  Widget _buildSignInForm() {
    return Form(
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  backgroundColor: Colors.grey[700],
                  foregroundColor: Colors.white,
                  elevation: 4,
                  shadowColor: Colors.grey.withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (context) => const SignUpDialog(),
              );
            },
            child: const Text(
              '¿No tienes una cuenta? Regístrate',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 14,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildResponsiveLayout(
      BuildContext context, BoxConstraints constraints) {
    final bool isMobile = constraints.maxWidth < kMobileBreakpoint;
    if (isMobile) {
      return SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(
                'assets/images/banner/Teatro_Baralt.jpg',
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: _buildSignInForm(),
            ),
          ],
        ),
      );
    } else {
      return Row(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner/Teatro_Baralt.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: _buildSignInForm(),
            ),
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInBloc, SignInState>(
      bloc: _signInBloc,
      listener: (context, state) {
        // Aquí puedes gestionar cambios de estado o notificar errores, etc.
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return LoadingDialog(
            text: 'Ingresando mediante el sistema cerrado de autenticación',
            content: 'Validando la combinación de correo de usuario',
            onConfirm: () {},
            onCancel: () {},
          );
        } else {
          return ScaleTransition(
            scale: _scaleAnimation,
            child: Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final double dialogWidth = constraints.maxWidth;
                  final double dialogHeight =
                      MediaQuery.of(context).size.height * 0.7;
                  return SizedBox(
                    width: dialogWidth < kMobileBreakpoint
                        ? MediaQuery.of(context).size.width * 0.9
                        : MediaQuery.of(context).size.width * 0.85,
                    height: dialogHeight,
                    child: _buildResponsiveLayout(context, constraints),
                  );
                },
              ),
            ),
          );
        }
      },
    );
  }
}
