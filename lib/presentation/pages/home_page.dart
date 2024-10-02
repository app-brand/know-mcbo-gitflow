import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs-clean/sign_in_dialog.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MainHome();
  }
}

class MainHome extends StatelessWidget {
  const MainHome({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          SizedBox(
              child: Center(
                  child: IconButton(
            onPressed: () {
              // Por no revisar - Fuck alegandro
              context.go('/maps');
            },
            color: ThemeCore.primaryColor,
            icon: const Icon(Icons.map),
          ))),
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
                onTap: () {}),
            ListTile(
              title: const Text('Rutas'),
              subtitle: const Text('Turismo a tus gustos'),
              onTap: () => {}, //context.go('/rutasTuristicas'),
            ),
            ListTile(
              title: const Text('Quienes somos?'),
              subtitle: const Text('Conoce mas de la solucion'),
              onTap: () => {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.pink,
      ),
    );
  }
}
