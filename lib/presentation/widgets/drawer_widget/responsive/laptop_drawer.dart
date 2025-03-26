import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerLaptop extends StatelessWidget {
  final double fontScale;

  const DrawerLaptop({super.key, required this.fontScale});

  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.grey[850],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Header
            Container(
              height: 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/brand/antano.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Botón de Guía + Temáticas
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    icon: const Icon(Icons.picture_as_pdf, color: Colors.redAccent),
                    label: Text(
                      'Descargar Guía',
                      style: TextStyle(
                        fontSize: 17 * fontScale,
                        color: Colors.grey[850],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/espacios');
                    },
                    child: Text(
                      'Espacios',
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16 * fontScale,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/idiosincrasia');
                    },
                    child: Text(
                      'Idiosincrasia',
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16 * fontScale,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/gastronomia');
                    },
                    child: Text(
                      'Gastronomía',
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontSize: 16 * fontScale,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Logo y texto
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Image.asset(
                        'assets/images/brand/alcaldia.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'FOMUTUR',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24 * fontScale,
                            fontFamily: 'AlcaldiaFonts',
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Redes sociales
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Síguenos en nuestras redes sociales',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17 * fontScale,
                    fontFamily: 'AlcaldiaFonts',
                  ),
                ),
                const SizedBox(height: 10),
                Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  spacing: 1,
                  runSpacing: 1,
                  children: [
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.whatsapp),
                      color: Colors.white,
                      onPressed: () async {
                        await _launchURL("https://wa.me/584127334000");
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.instagram),
                      color: Colors.white,
                      onPressed: () async {
                        await _launchURL("https://www.instagram.com/mcboalcaldia/");
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.facebook),
                      color: Colors.white,
                      onPressed: () async {
                        await _launchURL("https://www.facebook.com/mcboalcaldia/");
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.twitter),
                      color: Colors.white,
                      onPressed: () async {
                        await _launchURL("https://www.twitter.com/mcboalcaldia/");
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.tiktok),
                      color: Colors.white,
                      onPressed: () async {
                        await _launchURL("https://www.tiktok.com/@mcboalcaldia/");
                      },
                    ),
                    IconButton(
                      icon: const Icon(FontAwesomeIcons.youtube),
                      color: Colors.white,
                      onPressed: () async {
                        await _launchURL("https://www.youtube.com/@mcboalcaldia/");
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

