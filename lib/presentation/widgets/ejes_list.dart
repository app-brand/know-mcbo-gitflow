import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/pages/ejes_page.dart';
import 'idiosincrasia_card.dart';

class TravelPageContent extends StatelessWidget {
  const TravelPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    // Usamos MediaQuery para obtener el ancho de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;

    // Definimos los valores según el tipo de dispositivo
    int crossAxisCount;
    double horizontalPadding;
    double titleFontSize;
    double subtitleFontSize;
    double descriptionFontSize;

    if (screenWidth >= 1024) {
      // Vista para Web (Escritorio)
      crossAxisCount = 2;
      horizontalPadding = 140.0;
      titleFontSize = 36.0;
      subtitleFontSize = 20.0;
      descriptionFontSize = 18.0;
    } else if (screenWidth >= 600) {
      // Vista para Tablet
      crossAxisCount = 2;
      horizontalPadding = 80.0;
      titleFontSize = 28.0;
      subtitleFontSize = 18.0;
      descriptionFontSize = 16.0;
    } else {
      // Vista para Móvil
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
                  'IDIOSINCRASIA',
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
              'Explora sobre nuestras tradiciones y costumbres',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: titleFontSize,
                  color: AppTheme.greenAlcaldia,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Conoce más sobre la idiosincrasia de nuestra ciudad y sus habitantes.',
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
                  child: IdiosincrasiaCard(
                    imagePath: 'assets/images/banner/tranvia.jpeg',
                    title: 'Tranvía de Maracaibo',
                    description:
                        'Conoce la historia de este medio de transporte emblemático.',
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.80,
                  child: IdiosincrasiaCard(
                    imagePath: 'assets/images/axis/gaita.jpeg',
                    title: 'Gaitas',
                    description:
                        'Descubre más sobre este género musical típico de la región.',
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.40,
                  child: IdiosincrasiaCard(
                    imagePath: 'assets/images/axis/artesania.JPG',
                    title: 'Artesanía',
                    description:
                        'Conoce más sobre la artesanía zuliana y sus tradiciones.',
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
