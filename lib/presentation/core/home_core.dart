import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:know_my_city/application/profile/profile_bloc.dart';
import 'package:know_my_city/application/sign_in/sign_in_bloc.dart';
import 'package:know_my_city/application/sign_up/sign_up_bloc.dart';
import 'package:know_my_city/injection.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/core/state_core.dart';
import 'package:know_my_city/presentation/core/theme_core.dart';
import 'package:know_my_city/presentation/dialogs/mail_check_dialog.dart';
import 'package:know_my_city/presentation/dialogs/phone_dialog.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';
import 'package:know_my_city/presentation/dialogs/sign_up_dialog.dart';
import 'package:know_my_city/presentation/pages/home_page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCore extends StatelessWidget {
  const HomeCore({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => sl<StateCore>(), // Obtén ApplicationState de get_it
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            lazy: false,
            create: (context) => sl<SignInBloc>(),
            child: const SignInDialog(),
          ),
          BlocProvider(
            lazy: false,
            create: (context) =>
                sl<SignUpBloc>(), // Solo una instancia de SignUpBloc
          ),
          BlocProvider(
            lazy: false,
            create: (context) => sl<ProfileBloc>(),
            child: const PhoneDialog(),
          ),
        ],
        child: MaterialApp.router(
          title: 'Conoce Maracaibo',
          debugShowCheckedModeBanner: false,
          theme: ThemeCore.getThemeCore(),
          routerConfig: routerCore,
        ),
      ),
    );
  }
}
