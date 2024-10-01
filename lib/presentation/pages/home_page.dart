import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sing_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs/login_dialog.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  // Constructo #1 - Diagrama y UML
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Control de Gestion.
  late SignInBloc _signInBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Conclusion el disparar un evento
    _signInBloc = sl<SignInBloc>();
    //_signInBloc.add(const SignInEvent.emailChanged("data4if@gmail.com"));
    //_signInBloc.add(const SignInEvent.passwordChanged("Elias#3090"));
    print('initState is called');
  }

  @override
  Widget build(BuildContext context) {
    // Revisar este punto - # sl - Service locator
    // Me permite ver la una instancia tal cual un singleton.
    // final signInBloc = sl<SignInBloc>();
    return BlocBuilder<SignInBloc, SignInState>(
      bloc: _signInBloc,
      builder: (context, state) {
        if (state.isSubmitting) {
          print('Iniciando comunicacion servidor | SingIn - Bloc');
          return Center(child: CircularProgressIndicator());
        } else {
          print('Started | Completed SingIn - Bloc');
          return MainHome(signInBloc: _signInBloc);
        }
      },
    );
  }
}

class MainHome extends StatelessWidget {
  const MainHome({
    super.key,
    required this.signInBloc,
  });

  final SignInBloc signInBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          SizedBox(
            child: Center(
              child: IconButton(
                onPressed: () {
                  context.go('/maps');
                },
                color: ThemeCore.primaryColor,
                icon: const Icon(Icons.map),
              )
            )
          ),
          SizedBox(
            child: Center(
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return LoginDialog();
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
                onTap: () {
                  print('testing');
                  signInBloc.add(const SignInEvent.singInEmail());
                }),
            ListTile(
              title: const Text('Rutas'),
              subtitle: const Text('Turismo a tus gustos'),
              onTap: () => {
                //context.go('/rutasTuristicas'),
              },
            ),
            ListTile(
              title: const Text('Quienes somos?'),
              subtitle: const Text('Conoce mas de la solucion'),
              onTap: () => {
                //context.go('/acercaDeNosotros')
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
