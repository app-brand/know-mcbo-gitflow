import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation-fixed/core-fixed/home_main-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/sign_in_page-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/sign_up_page-fixed.dart';

final GoRouter routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'Mcbo',
      builder: (context, state) => McboMain(),
    ),
    GoRoute(
      path: '/signIm',
      name: 'signIn',
      builder: (context, state) => const SignInPage(),
    ),
    GoRoute(
      path: '/signUp',
      name: 'signUp',
      builder: (context, state) => const SignUpPage(),
    ),
  ],
);
