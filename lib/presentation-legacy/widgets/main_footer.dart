import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  // Función para abrir un enlace
  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'No se pudo abrir el enlace $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    bool isMobileOrTablet = screenWidth < 800;

    return Container(
      width: double.infinity,
      color: Colors.grey[850],
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Wrap para organizar las columnas de manera responsive
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.spaceAround,
            children: [
              // Primera columna (Logo + FOMUTUR)
              SizedBox(
                width:
                    isMobileOrTablet ? screenWidth * 0.9 : screenWidth * 0.28,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logo y título
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/alcaldia-de-maracaibo.png',
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
                    const SizedBox(height: 10),
                    const Text(
                      'En nuestra alcaldía, la transparencia es\nnuestra prioridad. Accede a la información\npública de manera clara y accesible.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'AlcaldiaFonts',
                      ),
                    ),
                  ],
                ),
              ),
              // Segunda columna (Contacto)
              SizedBox(
                width:
                    isMobileOrTablet ? screenWidth * 0.9 : screenWidth * 0.28,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Contacto',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'AlcaldiaFonts',
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Horario:\nLunes a viernes 8:00 a.m. a 4:00 p.m.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'AlcaldiaFonts',
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Dirección:\nAvenida 4 con Calle 96,\nMaracaibo, Venezuela',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'AlcaldiaFonts',
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () async {
                        await _launchURL('https://wa.me/584127334000');
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                          SizedBox(width: 8),
                          Text(
                            'WhatsApp',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: 'AlcaldiaFonts',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Tercera columna (Redes Sociales)
              SizedBox(
                width:
                    isMobileOrTablet ? screenWidth * 0.9 : screenWidth * 0.28,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Síguenos en nuestras redes sociales',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'AlcaldiaFonts',
                      ),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 10,
                      runSpacing: 10,
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
                            await _launchURL(
                                "https://www.twitter.com/mcboalcaldia/");
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.tiktok),
                          color: Colors.white,
                          onPressed: () async {
                            await _launchURL(
                                "https://www.tiktok.com/@mcboalcaldia/");
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
          ),
        ],
      ),
    );
  }
}
