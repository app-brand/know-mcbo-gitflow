import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerLaptop extends StatelessWidget {
  final double fontScale;

  const DrawerLaptop({super.key, required this.fontScale});

  // Función para abrir un enlace
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 10,
            ),
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/brand/antano.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      icon: Icon(Icons.picture_as_pdf, color: Colors.redAccent),
                      label: Text(
                        'Descargar Guia',
                        style: TextStyle(
                            fontSize: 17 * fontScale, color: Colors.grey[850]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: _buildMenuItems(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItems(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(8),
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
                padding: EdgeInsets.all(8),
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
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
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
                      await _launchURL(
                          "https://www.instagram.com/mcboalcaldia/");
                    },
                  ),
                  IconButton(
                    icon: const Icon(FontAwesomeIcons.facebook),
                    color: Colors.white,
                    onPressed: () async {
                      await _launchURL(
                          "https://www.facebook.com/mcboalcaldia/");
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
                      await _launchURL(
                          "https://www.youtube.com/@mcboalcaldia/");
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
