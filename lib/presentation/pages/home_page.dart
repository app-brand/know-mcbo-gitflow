import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SignUpBloc _signUpBloc;

  @override
  void initState() {
    super.initState();
    _signUpBloc = sl<SignUpBloc>();
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

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      bloc: _signUpBloc,
      listener: (context, state) {
        // Add your listener logic here if needed
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              SizedBox(
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      print('Email verificado? -' +
                          state.isEmailVerified.toString());
                      if (state.isEmailVerified) {
                        context.go('/maps');
                      } else {
                        _showErrorDialog(
                            "Aqui yupi - no puedes pasar - perro malo");
                      }
                    },
                    color: ThemeCore.primaryColor,
                    icon: const Icon(Icons.map),
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SignInDialog();
                        },
                      );
                    },
                    color: ThemeCore.primaryColor,
                    icon: const Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  title: const Text('Testing - purpose'),
                  subtitle: const Text('Pagina principal'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Rutas'),
                  subtitle: const Text('Turismo a tus gustos'),
                  onTap: () {}, // Add your routing logic here
                ),
                ListTile(
                  title: const Text('Quienes somos?'),
                  subtitle: const Text('Conoce mas de la solucion'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          body: Container(
            color: Colors.pink,
          ),
        );
      },
    );
  }
}
