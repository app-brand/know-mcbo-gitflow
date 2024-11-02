import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'idiosincrasia_card.dart';

class TravelPageContent extends StatelessWidget {
  const TravelPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Determinamos el ancho de pantalla para ajustar el diseño
        bool isMobile = constraints.maxWidth < 600;

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 16.0 : 140.0,  // Menos padding en móvil
              vertical: 24.0,
            ),
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
                          fontSize: isMobile ? 18 : 20,
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
                      fontSize: isMobile ? 24 : 36,
                      color: AppTheme.greenAlcaldia,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Conoce más sobre la idiosincrasia de nuestra ciudad y sus habitantes.',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: isMobile ? 14 : 18,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                StaggeredGrid.count(
                  crossAxisCount: isMobile ? 1 : 2, // 1 columna en móvil
                  crossAxisSpacing: isMobile ? 12 : 18,
                  mainAxisSpacing: isMobile ? 12 : 18,
                  children: const [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 0.75,
                      child: IdiosincrasiaCard(
                        imagePath: 'assets/images/banner/tranvia.jpeg',
                        title: 'Tranvía de Maracaibo',
                        description:
                            'Conoce la historia de este medio de transporte emblemático.',
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.5,
                      child: IdiosincrasiaCard(
                        imagePath: 'assets/images/axis/gaita.jpeg',
                        title: 'Gaitas',
                        description:
                            'Descubre más sobre este género musical típico de la región.',
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 0.75,
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
      },
    );
  }
}
