import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/pages/ejes_page.dart';
import 'idiosincrasia_card.dart';

class GastronomiaContent extends StatelessWidget {
  const GastronomiaContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 70.0, bottom: 70.0, left: 140.0, right: 140.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/banner/SolConoce.png',
                  width: 32,
                  height: 32,
                ),
                Text(
                  'GASTRONOMÍA',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: AppTheme.greenSecondary,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            Text(
              'Disfruta de los sabores y aromas de la ciudad',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 36,
                  color: AppTheme.greenAlcaldia,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Conoce más sobre la gastronomía típica de la región y sus tradiciones.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 16),
            StaggeredGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.40,
                  child: GestureDetector(
                    onTap: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EjesPage(boxId: 'patacones')),
                      ); */
                      routerCore.go('/ejes/patacones');
                    },
                    child: const IdiosincrasiaCard(
                      imagePath: 'assets/images/axis/patacones.jpeg',
                      title: 'Patacones',
                      description:
                          'Descubre más sobre este plato típico de la región.',
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.80,
                  child: GestureDetector(
                    onTap: () {
/*                       Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EjesPage(boxId: 'mandocas')),
                      ); */
                      routerCore.go('/ejes/mandocas');
                    },
                    child: const IdiosincrasiaCard(
                      imagePath: 'assets/images/axis/mandocas.jpg',
                      title: 'Mandocas',
                      description:
                          'Conoce más sobre este plato típico de la región.',
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.40,
                  child: GestureDetector(
                    onTap: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                EjesPage(boxId: 'bollos_pelones')),
                      ); */
                      routerCore.go('/ejes/bollo_pelones');
                    },
                    child: const IdiosincrasiaCard(
                      imagePath: 'assets/images/axis/bollospelones.webp',
                      title: 'Bollos pelones',
                      description:
                          'Descubre más sobre este plato típico de la región.',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
