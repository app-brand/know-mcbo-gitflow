import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'idiosincrasia_card.dart';

class GastronomiaContent extends StatelessWidget {
  const GastronomiaContent({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el ancho de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;

    // Definimos configuración responsive según el ancho de pantalla
    int crossAxisCount;
    double horizontalPadding;
    double titleFontSize;
    double subtitleFontSize;
    double descriptionFontSize;

    if (screenWidth >= 1024) {
      // Vista de escritorio
      crossAxisCount = 2;
      horizontalPadding = 140.0;
      titleFontSize = 36.0;
      subtitleFontSize = 20.0;
      descriptionFontSize = 18.0;
    } else if (screenWidth >= 600) {
      // Vista de tablet
      crossAxisCount = 2;
      horizontalPadding = 80.0;
      titleFontSize = 28.0;
      subtitleFontSize = 18.0;
      descriptionFontSize = 16.0;
    } else {
      // Vista móvil
      crossAxisCount = 1;
      horizontalPadding = 16.0;
      titleFontSize = 24.0;
      subtitleFontSize = 16.0;
      descriptionFontSize = 14.0;
    }

    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 24.0),
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
                const SizedBox(width: 8),
                Text(
                  'GASTRONOMÍA',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: subtitleFontSize,
                      color: AppTheme.greenSecondary,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Disfruta de los sabores y aromas de la ciudad',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: titleFontSize,
                  color: AppTheme.greenAlcaldia,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Conoce más sobre la gastronomía típica de la región y sus tradiciones.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: descriptionFontSize,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 16),
            StaggeredGrid.count(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.40,
                  child: GestureDetector(
                    onTap: () {
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
                      routerCore.go('/ejes/bollospelones');
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
