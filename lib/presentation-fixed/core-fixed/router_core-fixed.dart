import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation-fixed/core-fixed/home_core-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages/sign_in/sign_in-page.dart';
import 'package:know_my_city/presentation-fixed/pages/sign_up/sign_up.dart';

final GoRouter routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'Mcbo',
      builder: (context, state) => McboMain(),
    ),
    GoRoute(
      path: '/mail_verification',
      name: 'mailVerification',
      builder: (context, state) => EmailVerificationPage(),
    ),
    GoRoute(
      path: '/phone_profile',
      name: 'phoneProfile',
      builder: (context, state) => PhoneVerificationPage(),
    ),
    GoRoute(
      path: '/signIn',
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
