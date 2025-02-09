import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation-fixed/core-fixed/home_main.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/map-fixed.dart';
import 'package:know_my_city/presentation/pages/axi_page.dart';

int getIndexFromList(List<String> list, String value) {
  return list.indexOf(value);
}

List<String> ideosincraciaAux = ['tranvia_de_maracaibo', 'gaitas', 'artesania'];

final routerCore = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => McboMain(),
    ),
    GoRoute(
      path: '/maps',
      builder: (context, state) => MapFixed(),
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
  ],
);
