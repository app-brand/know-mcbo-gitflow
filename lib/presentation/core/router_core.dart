import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/pages/home_page.dart';

final routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
