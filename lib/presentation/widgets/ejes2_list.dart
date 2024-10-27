import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'espacios_card.dart';  // Importa este archivo donde tengas el widget TravelOptionCard

class EspaciosContent extends StatelessWidget {
  const EspaciosContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 70.0,
          bottom: 70.0,
          left: 120.0,
          right: 120.0),  // Reducimos el padding para hacer el layout más compacto
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ESPACIOS',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                fontSize: 20,
                color: AppTheme.greenSecondary,
                fontWeight: FontWeight.w300
                
              ),                
              ),              
            ),
            Text(
              'Disfruta de las maravillosas vistas que regala la ciudad',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                fontSize: 36,
                color: AppTheme.greenAlcaldia,
              ),                
              ),              
            ),
            const SizedBox(height: 8),
            Text( 
              'Conoce más sobre los espacios emblemáticos de la ciudad y sus alrededores.',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                ),                
              ),   
            ),
            const SizedBox(height: 16),
            StaggeredGrid.count(
              crossAxisCount: 2,  // 2 columnas
              crossAxisSpacing: 18,  // Espaciado más pequeño entre columnas
              mainAxisSpacing: 18,   // Espaciado más pequeño entre filas
              children: const [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,  // Ocupa 1 columna
                  mainAxisCellCount: 0.80,  // Ocupa 0.75 de una fila
                  child: EspaciosCard(
                    imagePath: 'assets/images/axis/basilica.jpg',
                    title: 'Basilica de Chiquinquirá',
                    description:
                        'Conoce la historia de la patrona de los zulianos.',
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,  // Ocupa 1 columna
                  mainAxisCellCount: 0.40,  // Ocupa 1.5 filas
                  child: EspaciosCard(
                    imagePath: 'assets/images/axis/vereda.png',
                    title: 'Vereda del Lago',
                    description: 'Descubre el sitio más visitado por los marabinos.',
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,  // Ocupa 1 columna
                  mainAxisCellCount: 0.40,  // Ocupa 0.75 de una fila
                  child: EspaciosCard(
                    imagePath: 'assets/images/banner/carabobocalle.jpg',
                    title: 'Calle Carabobo',
                    description:
                        'Descubre la historia de la calle más antigua de la ciudad.',
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