import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation-fixed/core-fixed/home_core-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/phone_verification-fixed.dart';
import 'package:know_my_city/legacy-widgets/r-sign_in_page-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/sign_up_page-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/mail_verificacion_page-fixed.dart';

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
      builder: (context, state) => MailVerificationScreen(),
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
