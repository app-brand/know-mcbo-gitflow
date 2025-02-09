import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation-fixed/dialogs-fixed/sign_in-fixed.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';

class HeaderCustom extends StatefulWidget {
  @override
  _HeaderCustomState createState() => _HeaderCustomState();
}

class _HeaderCustomState extends State<HeaderCustom> {
  late String _randomImageUrl;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _randomImageUrl = _getRandomImageUrl();
    // Iniciar la animación después de un pequeño retraso
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  String _getRandomImageUrl() {
    // Lista de URLs de imágenes
    const imageUrls = [
      'assets/images/banner/Teatro_Baralt.jpg',
      /* 'assets/images/banner/maracaibo-2.jpeg',
      'assets/images/banner/maracaibo-7.jpeg', */
      'assets/images/banner/puente4k.png',
      /* 'assets/images/banner/BOHG9813.jpg',
      'assets/images/banner/BOHG9821.jpg',
      'assets/images/banner/BOHG9920.jpg',
      'assets/images/banner/IMG_5062.JPG',
      'assets/images/banner/IMG_5193.JPG', */
    ];

    // Seleccionar una imagen aleatoriamente
    final random = Random();
    return imageUrls[random.nextInt(imageUrls.length)];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width =
            MediaQuery.of(context).size.width; // Usar el ancho de la pantalla
        double height =
            MediaQuery.of(context).size.height; // Usar la altura de la pantalla

        return Stack(
          children: [
            // Imagen de fondo que ocupa toda la primera sección
            Container(
              width: width,
              height: height, // Ocupa todo el alto disponible
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      _randomImageUrl), // Ruta de la imagen aleatoria
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.15),
                    BlendMode.hardLight,
                  ),
                ),
              ),
            ),
            // Navbar sobreposicionado
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "images/banner/LOGOFOMUTURBLANCO.png", // Ruta de la imagen
                      width: 200, // Tamaño fijo para el logo
                      height: 100, // Tamaño fijo para el logo
                    ),
                    // Opciones del navbar
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Inicio',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                /* fontWeight: FontWeight.w600, */
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12), // Espacio entre los botones
                        TextButton(
                          onPressed: () {
                            routerCore.push('/maps');
                          },
                          child: Text(
                            'Mapa de Turista',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                /* fontWeight: FontWeight.w600, */
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12), // Espacio entre los botones
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Nosotros',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                /* fontWeight: FontWeight.w600, */
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12), // Espacio entre los botones
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Perfil',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                /* fontWeight: FontWeight.w600, */
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Imagen animada centrada a la izquierda con fade-in
            Positioned(
              top: height / 2.5, // Ajusta la posición vertical
              left: 20, // Ajusta la posición horizontal
              child: AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: Image.asset(
                  'assets/images/banner/logoconoce.png', // Ruta de la imagen
                  width: 600, // Tamaño fijo para la imagen
                  height: 300, // Tamaño fijo para la imagen
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
