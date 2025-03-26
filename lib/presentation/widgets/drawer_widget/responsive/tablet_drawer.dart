import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerTablet extends StatelessWidget {
  final double fontScale;

  const DrawerTablet({super.key, required this.fontScale});

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
            // Header con imagen
            Container(
              height: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/brand/antano.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Botón guía + botones temáticos
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
                      style: TextStyle(fontSize: 14 * fontScale, color: Colors.grey[850]),
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

            // Logo y FOMUTUR
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/brand/alcaldia.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 10),
                const Flexible(
                  child: Text(
                    'FOMUTUR',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'AlcaldiaFonts',
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),

            const Divider(color: Colors.white),

            // Información
            ListTile(
              leading: const Icon(Icons.schedule, color: Colors.teal),
              title: Text(
                'Lunes a viernes 8:00 a.m. a 4:00 p.m.',
                style: TextStyle(fontSize: 18 * fontScale, color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.place, color: Colors.teal),
              title: Text(
                'Av. 4 con Calle 96, Maracaibo',
                style: TextStyle(fontSize: 18 * fontScale, color: Colors.white),
              ),
            ),

            const Divider(color: Colors.white),

            // Redes sociales
            ListTile(
              leading: const Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
              title: Text('WhatsApp', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
              onTap: () => _launchURL('https://wa.me/584127334000'),
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.facebook, color: Colors.blueAccent),
              title: Text('Facebook', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
              onTap: () => _launchURL('https://www.facebook.com/mcboalcaldia/'),
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.instagram, color: Colors.purple),
              title: Text('Instagram', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
              onTap: () => _launchURL('https://www.instagram.com/mcboalcaldia/'),
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.youtube, color: Colors.red),
              title: Text('YouTube', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
              onTap: () => _launchURL('https://www.youtube.com/@mcboalcaldia/'),
            ),
          ],
        ),
      ),
    );
  }
}
