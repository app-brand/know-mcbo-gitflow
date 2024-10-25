import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'idiosincrasia_card.dart';  // Importa este archivo donde tengas el widget TravelOptionCard

class TravelPageContent extends StatelessWidget {
  const TravelPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(80.0),  // Reducimos el padding para hacer el layout más compacto
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Explore endless options with our service',
              style: TextStyle(
                fontSize: 24,  // Texto más pequeño
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Discover a myriad of choices available through our service, offering limitless possibilities for your exploration and enjoyment',
              style: TextStyle(
                fontSize: 14,  // Texto más pequeño
                color: Colors.grey[600],
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
                  mainAxisCellCount: 0.40,  // Ocupa 0.75 de una fila
                  child: TravelOptionCard(
                    imagePath: 'assets/images/axis/axi_1.jpeg',
                    title: 'Comprehensive Travel Support',
                    description:
                        '24/7 customer service to assist you before, during, and after your trip.',
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,  // Ocupa 1 columna
                  mainAxisCellCount: 0.80,  // Ocupa 1.5 filas
                  child: TravelOptionCard(
                    imagePath: 'assets/images/axis/axi_2.jpeg',
                    title: 'Expert Travel Advice',
                    description: 'Tips and guides to enhance your travel experience.',
                  ),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,  // Ocupa 1 columna
                  mainAxisCellCount: 0.40,  // Ocupa 0.75 de una fila
                  child: TravelOptionCard(
                    imagePath: 'assets/images/axis/axi_3.jpeg',
                    title: 'Diverse Destinations',
                    description:
                        'Access to a wide range of domestic and international locations.',
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
