import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/pages/ejes_page.dart'; // Asegúrate de que esta ruta sea correcta
import 'espacios_card.dart';

class EspaciosContent extends StatelessWidget {
  const EspaciosContent({super.key});

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
                Text(
                  'ESPACIOS',
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
              crossAxisCount: 2,
              crossAxisSpacing: 18,
              mainAxisSpacing: 18,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.80,
                  child: GestureDetector(
                    onTap: () {
                      /* Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EjesPage(boxId: 'basilica')),
                      ); */
                      routerCore.go('/ejes/basilica');
                    },
                    child: const EspaciosCard(
                      imagePath: 'assets/images/axis/basilica.jpg',
                      title: 'Basilica de Chiquinquirá',
                      description:
                          'Conoce la historia de la patrona de los zulianos.',
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.40,
                  child: GestureDetector(
                    onTap: () {
                      routerCore.go('/ejes/vereda');
                    },
                    child: const EspaciosCard(
                      imagePath: 'assets/images/axis/vereda.png',
                      title: 'Vereda del Lago',
                      description:
                          'Descubre el sitio más visitado por los marabinos.',
                    ),
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 0.40,
                  child: GestureDetector(
                    onTap: () {
                      //calle_carabobo
                      routerCore.go('/ejes/calle_carabobo');
                    },
                    child: const EspaciosCard(
                      imagePath: 'assets/images/banner/carabobocalle.jpg',
                      title: 'Calle Carabobo',
                      description:
                          'Descubre la historia de la calle más antigua de la ciudad.',
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
