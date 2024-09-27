import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sing_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';

class LoginDialog extends StatefulWidget {
  LoginDialog({super.key});
  @override
  State<LoginDialog> createState() => _LoginDialogState();
}

class _LoginDialogState extends State<LoginDialog> {
  final formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  late SignInBloc _signInBloc;

  @override
  void initState() {
    // TODO: implement initState
    _signInBloc = sl<SignInBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      bloc: _signInBloc,
      builder: (context, state) => Dialog(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.9,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Form(
                key: formKey, // Show errors immediately
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('¿Estás listo?'),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                      ),
                      autocorrect: true,
                      onChanged: (email) =>
                          {_signInBloc.add(SignInEvent.emailChanged(email))},
                      validator: (email) =>
                          _signInBloc.state.emailAddress.value.fold(
                        (failure) => failure.maybeMap(
                          invalidEmail: (_) => 'Invalid email format',
                          orElse: () => null, // Handle other failures if needed
                        ),
                        (_) => null, // No error
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                      ),
                      autocorrect: true,
                      obscureText: true,
                      onChanged: (password) => {
                        _signInBloc.add(SignInEvent.passwordChanged(password))
                      },
                      validator: (password) =>
                          _signInBloc.state.password.value.fold(
                        (failure) => failure.maybeMap(
                          missingNumberPassword: (_) => 'Missing number',
                          missingSpecialSymbol: (_) => 'Missing special symbol',
                          missingUppercase: (_) =>
                              'Missing uppercase character',
                          shortPassword: (_) => 'Password is too short',
                          orElse: () => null, // Handle other failures if needed
                        ),
                        (_) {
                          return null;
                        }, // No error
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancelar'),
                        ),
                        Spacer(),
                        ElevatedButton(
                          child: const Text(
                            'Iniciar',
                            style: TextStyle(fontSize: 14),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              _signInBloc.add(const SignInEvent.singInEmail());
                            }
                          },
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Registrase'),
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
