import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';
//import 'package:know_my_city/presentation/pages/home_page.dart';

class HomeCore extends StatelessWidget {
  const HomeCore({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => sl<SignInBloc>(),
          child: SignInDialog(),
        ), // Validar este acercamiento - me confie demasiado.
      ],
      child: MaterialApp.router(
        title: 'Conoce Maracaibo',
        debugShowCheckedModeBanner: false,
        theme: ThemeCore.getThemeCore(),
        routerConfig: routerCore,
      ),
    );
  }
}
