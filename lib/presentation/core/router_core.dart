import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/pages/axi_page.dart';
import 'package:know_my_city/presentation/pages/home_page.dart';
import 'package:know_my_city/presentation/pages/maps_page.dart';

final routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AppHome(),
    ),
    GoRoute(
      path: '/maps',
      builder: (context, state) => const MapsPage(),
    ),
    GoRoute(
      path: '/ejes/:id', // el :id representa el parámetro string
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        print(id);
        return EjesPage(
          boxId: id,
        ); // Navega al widget con el parámetro
      },
    ),
  ],
);
