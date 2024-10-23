import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/pages/home_aux.dart';
import 'package:know_my_city/presentation/pages/home_page.dart';
import 'package:know_my_city/presentation/pages/maps_page.dart';

final routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/app',
      builder: (context, state) => const AppHome(),
    ),
    GoRoute(
      path: '/maps',
      builder: (context, state) => const MapsPage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
