import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/pages/aboutus_page.dart';
import 'package:know_my_city/presentation/pages/axi_page.dart';
import 'package:know_my_city/presentation/pages/home_page.dart';
import 'package:know_my_city/presentation/pages/maps_page.dart';

int getIndexFromList(List<String> list, String value) {
  return list.indexOf(value);
}

List<String> ideosincraciaAux = ['tranvia_de_maracaibo', 'gaitas', 'artesania'];

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
        final String id = state.pathParameters['id']!;
        return axiPage(
          boxId: getIndexFromList(ideosincraciaAux, id),
        ); // Navega al widget con el parámetro
      },
    ),
    GoRoute(
      path: '/aboutus',
      builder: (context, state) => const AboutUsPage(),
    ),
  ],
);
