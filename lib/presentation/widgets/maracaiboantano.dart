import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';

class MaracaiboAntano extends StatelessWidget {
  const MaracaiboAntano({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(
        bottom: 70.0,
        left: 140.0,
        right: 140.0,
      ),
      child: SizedBox(
        width: screenWidth,
        height: screenHeight - 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/banner/maracaiboAntanoEnhanced.jpeg'), 
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(                
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  color: AppTheme.greenAlcaldia,
                  backgroundBlendMode: BlendMode.softLight,
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.transparent,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              // Contenido principal
              Positioned(
                left: 60,
                top: 290,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /* const Text(
                      'COMFORT CAMP',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Maracaibo de Antaño,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextSpan(
                            text: ' un viaje al pasado',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ), */
                    const SizedBox(height: 16),
                    const Text(
                      'La Caminata Maracaibo de Antaño, una iniciativa de FOMUTUR, ofrece un recorrido\n único por el corazón de Maracaibo, guiado por expertos\n que narran historias y leyendas de la ciudad.',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white, // Texto negro
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text('Descargar PDF'),
                    ),
                  ],
                ),
              ),
              /* const Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: Text(
                    'CAMPFIRE PARTY',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ), */
              Positioned(
                left: 60,
                top: 60, // Ajusta la posición vertical según sea necesario
                child: Image.asset(
                  'assets/images/banner/maracaiboAntano.png', // Ruta de la imagen
                  width: 400, // Ajusta el tamaño de la imagen
                  height: 400, // Ajusta el tamaño de la imagen
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
