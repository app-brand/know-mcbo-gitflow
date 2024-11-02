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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 140.0, right: 140.0),
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
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: AppTheme.greenSecondary,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'Explora sobre nuestras tradiciones y costumbres',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 36,
                  color: AppTheme.greenAlcaldia,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Conoce más sobre la idiosincrasia de nuestra ciudad y sus habitantes.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 16),
            StaggeredGrid.count(
              crossAxisCount: 2, // 2 columnas
              crossAxisSpacing: 18, // Espaciado más pequeño entre columnas
              mainAxisSpacing: 18, // Espaciado más pequeño entre filas
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1, // Ocupa 1 columna
                  mainAxisCellCount: 0.40,
                  child: GestureDetector(
                    onTap: () {
                      routerCore.go('/ejes/tranvia_de_maracaibo');
                    },
                    child: IdiosincrasiaCard(
                      imagePath: 'assets/images/banner/tranvia.jpeg',
                      title: 'Tranvía de Maracaibo',
                      description:
                          'Conoce la historia de este medio de transporte emblemático.',
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1, // Ocupa 1 columna
                  mainAxisCellCount: 0.80, // Ocupa 1.5 filas
                  child: GestureDetector(
                    onTap: () {
                      routerCore.go('/ejes/gaitas');
                    },
                    child: IdiosincrasiaCard(
                      imagePath: 'assets/images/axis/gaita.jpeg',
                      title: 'Gaitas',
                      description:
                          'Descubre más sobre este género musical típico de la región.',
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1, // Ocupa 1 columna
                  mainAxisCellCount: 0.40,
                  child: GestureDetector(
                    onTap: () {
                      //calle_carabobo
                      routerCore.go('/ejes/artesania');
                    },
                    child: IdiosincrasiaCard(
                      imagePath: 'assets/images/axis/artesania.JPG',
                      title: 'Artesanía',
                      description:
                          'Conoce más sobre la artesanía zuliana y sus tradiciones.',
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
