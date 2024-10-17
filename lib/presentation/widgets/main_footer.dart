import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Footer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alcaldía de Maracaibo'),
        ),
        body: Center(
          child: Text('Contenido principal de la página'),
        ),
        bottomNavigationBar: FooterWidget(),
      ),
    );
  }
}



class FooterWidget extends StatelessWidget {
  // Función para abrir un enlace
  Future<void> _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'No se pudo abrir el enlace $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.grey[850],
      padding: EdgeInsets.symmetric(vertical: 100, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/alcaldia-de-maracaibo.png', // Ruta de la imagen
                        width: 150, // Ajusta el tamaño de la imagen
                        height: 150,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'FOMUTUR',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            fontFamily: 'AlcaldiaFonts'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'En nuestra alcaldía, la transparencia es\nnuestra prioridad. Accede a la información\npública de manera clara y accesible.',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'AlcaldiaFonts'),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contacto',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'AlcaldiaFonts'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Horario:\nLunes a viernes 8:00 a.m. a 4:00 p.m.',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'AlcaldiaFonts'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Dirección:\nAvenida 4 con Calle 96,\nMaracaibo, Venezuela',
                    style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'AlcaldiaFonts'),
                  ),
                  SizedBox(height: 5),
                  InkWell(
                   onTap: () {
                   // Aquí se define el enlace de WhatsApp
                   _launchURL('https://wa.me/584127632888'); // Cambia este número según sea necesario
                  },
                  child: Row(
                    children: [
                      Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                      SizedBox(width: 8),
                      Text(
                        'WhatsApp',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'AlcaldiaFonts'),
                      ),
                    ],
                  ),
                ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Síguenos en nuestras redes sociales',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'AlcaldiaFonts'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(FontAwesomeIcons.whatsapp),
                        color: Colors.white,
                        onPressed: () {
                          _launchURL("https://wa.me/584127334000");
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.instagram),
                        color: Colors.white,
                        onPressed: () {
                          _launchURL("https://www.instagram.com/mcboalcaldia/");
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.facebook),
                        color: Colors.white,
                        onPressed: () {
                          _launchURL("https://www.facebook.com/mcboalcaldia/");
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.twitter),
                        color: Colors.white,
                        onPressed: () {
                          _launchURL("https://www.twitter.com/mcboalcaldia/");
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.tiktok),
                        color: Colors.white,
                        onPressed: () {
                          _launchURL("https://www.tiktok.com/@mcboalcaldia/");
                        },
                      ),
                      IconButton(
                        icon: Icon(FontAwesomeIcons.youtube),
                        color: Colors.white,
                        onPressed: () {
                          _launchURL("https://www.youtube.com/@mcboalcaldia/");
                        },
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}