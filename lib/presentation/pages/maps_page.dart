import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({super.key});

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  late SignInBloc _signInBloc;
  @override
  void initState() {
    super.initState();
    _signInBloc = sl<SignInBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      bloc: _signInBloc,
      builder: (context, state) {
        if (state.isSubmitting) {
          return Center(child: CircularProgressIndicator());
        } else {
          return MainMaps(signInBloc: _signInBloc);
        }
      },
    );
  }
}

class MainMaps extends StatelessWidget {
  const MainMaps({
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
                // investigar como hacer que esto aparezca hasta la izquierda padding: EdgeInsets.zero,
                onPressed: () {
                  context.go('/');
                },
                color: ThemeCore.primaryColor,
                icon: const Icon(Icons.home_filled),
              ),
            ),
          ),
          SizedBox(
              child: Center(
                  child: IconButton(
            onPressed: () {
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
                      return const SignInDialog();
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
      body: Container(
        color: Colors.green.shade200,
      ),
    );
  }
}
