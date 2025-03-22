import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerTablet extends StatelessWidget {
  final double fontScale;

  const DrawerTablet({super.key, required this.fontScale});

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
                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                  child: ElevatedButton.icon(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    icon: Icon(Icons.picture_as_pdf, color: Colors.redAccent),
                    label: Text(
                      'Descargar Guia',
                      style: TextStyle(fontSize: 10 * fontScale),
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
        ListTile(
          leading: const Icon(Icons.schedule, color: Colors.teal),
          title: Text(
            'Horario: Lunes a viernes 8:00 a.m. a 4:00 p.m.',
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
        ListTile(
          leading: const Icon(Icons.picture_as_pdf, color: Colors.redAccent),
          title:
              Text('Descargar PDF', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
          onTap: () {},
        ),
        const Divider(),
        ListTile(
          leading: const Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
          title: Text('WhatsApp', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
          onTap: () {
            launchUrl(Uri.parse('https://wa.me/584127334000'));
          },
        ),
        ListTile(
          leading:
              const Icon(FontAwesomeIcons.facebook, color: Colors.blueAccent),
          title: Text('Facebook', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
          onTap: () {
            launchUrl(Uri.parse('https://www.facebook.com/mcboalcaldia/'));
          },
        ),
        ListTile(
          leading: const Icon(FontAwesomeIcons.instagram, color: Colors.purple),
          title: Text('Instagram', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
          onTap: () {
            launchUrl(Uri.parse('https://www.instagram.com/mcboalcaldia/'));
          },
        ),
        ListTile(
          leading: const Icon(FontAwesomeIcons.youtube, color: Colors.red),
          title: Text('YouTube', style: TextStyle(fontSize: 18 * fontScale, color: Colors.white)),
          onTap: () {
            launchUrl(Uri.parse('https://www.youtube.com/@mcboalcaldia/'));
          },
        ),
      ],
    );
  }
}
