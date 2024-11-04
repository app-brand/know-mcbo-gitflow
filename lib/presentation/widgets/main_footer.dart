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
    final screenWidth = MediaQuery.of(context).size.width; 
    bool isMobileOrTablet = screenWidth < 800; 
 
    return Container( 
      width: double.infinity, 
      color: Colors.grey[850], 
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20), 
      child: SingleChildScrollView( 
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
                Container( 
                  width: isMobileOrTablet ? screenWidth * 0.9 : screenWidth * 0.28, 
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.center, 
                    children: [ 
                      // Aseguramos que el logo sea visible y el texto FOMUTUR esté correctamente alineado 
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.center, 
                        children: [ 
                          Image.asset( 
                            'assets/alcaldia-de-maracaibo.png', 
                            width: 80, // Ajustamos el tamaño fijo para evitar overflow 
                            height: 80, 
                            fit: BoxFit.contain, 
                          ), 
                          SizedBox(width: 10), 
                          Flexible( 
                            child: Text( 
                              'FOMUTUR', 
                              style: TextStyle( 
                                color: Colors.white, 
                                fontWeight: FontWeight.bold, 
                                fontSize: 24, // Ajustamos el tamaño del texto para evitar overflow 
                                fontFamily: 'AlcaldiaFonts', 
                              ), 
                              overflow: TextOverflow.ellipsis, // Añadimos elipsis si el texto es demasiado largo 
                            ), 
                          ), 
                        ], 
                      ), 
                      SizedBox(height: 10), 
                      Text( 
                        'En nuestra alcaldía, la transparencia es\nnuestra prioridad. Accede a la información\npública de manera clara y accesible.', 
                        textAlign: TextAlign.center, // Centrado para móviles y tablets 
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
                Container( 
                  width: isMobileOrTablet ? screenWidth * 0.9 : screenWidth * 0.28, 
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.center, 
                    children: [ 
                      Text( 
                        'Contacto', 
                        style: TextStyle( 
                          color: Colors.white, 
                          fontWeight: FontWeight.bold, 
                          fontSize: 20, 
                          fontFamily: 'AlcaldiaFonts', 
                        ), 
                      ), 
                      SizedBox(height: 5), 
                      Text( 
                        'Horario:\nLunes a viernes 8:00 a.m. a 4:00 p.m.', 
                        textAlign: TextAlign.center, 
                        style: TextStyle( 
                          color: Colors.white, 
                          fontSize: 16, 
                          fontFamily: 'AlcaldiaFonts', 
                        ), 
                      ), 
                      SizedBox(height: 5), 
                      Text( 
                        'Dirección:\nC.C. Costa Verde, Planta Alta, Oficina de Sedemat,\nMaracaibo, Venezuela', 
                        textAlign: TextAlign.center, 
                        style: TextStyle( 
                          color: Colors.white, 
                          fontSize: 16, 
                          fontFamily: 'AlcaldiaFonts', 
                        ), 
                      ), 
                      SizedBox(height: 5), 
                      InkWell( 
                        onTap: () { 
                          _launchURL('https://wa.me/584246000649'); 
                        }, 
                        child: Row( 
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
                Container( 
                  width: isMobileOrTablet ? screenWidth * 0.9 : screenWidth * 0.28, 
                  child: Column( 
                    crossAxisAlignment: CrossAxisAlignment.center, 
                    children: [ 
                      Text( 
                        'Síguenos en nuestras redes sociales', 
                        textAlign: TextAlign.center, 
                        style: TextStyle( 
                          color: Colors.white, 
                          fontWeight: FontWeight.bold, 
                          fontSize: 20, 
                          fontFamily: 'AlcaldiaFonts', 
                        ), 
                      ), 
                      SizedBox(height: 10), 
                      Wrap( 
                        alignment: WrapAlignment.center, 
                        spacing: 10, 
                        runSpacing: 10, 
                        children: [ 
                          IconButton( 
                            icon: Icon(FontAwesomeIcons.whatsapp), 
                            color: Colors.white, 
                            onPressed: () { 
                              _launchURL("https://wa.me/584246000649"); 
                            }, 
                          ), 
                          IconButton( 
                            icon: Icon(FontAwesomeIcons.instagram), 
                            color: Colors.white, 
                            onPressed: () { 
                              _launchURL("https://www.instagram.com/maracaiboturismo?igsh=OGNjM3BmN2xqZWt3"); 
                            }, 
                          ), 
                          IconButton( 
                            icon: Icon(FontAwesomeIcons.facebook), 
                            color: Colors.white, 
                            onPressed: () { 
                              _launchURL("https://www.facebook.com/share/RkobGjB2tsvcujsE/?mibextid=LQQJ4d"); 
                            }, 
                          ), 
                          IconButton( 
                            icon: Icon(FontAwesomeIcons.twitter), 
                            color: Colors.white, 
                            onPressed: () { 
                              _launchURL("https://x.com/maracaiboturism?s=21&t=jeFfTv_catgEGkqqlHjV-A"); 
                            }, 
                          ), 
                          IconButton( 
                            icon: Icon(FontAwesomeIcons.tiktok), 
                            color: Colors.white, 
                            onPressed: () { 
                              _launchURL("https://www.tiktok.com/@maracaiboturismo?_t=8qePoFPl4Ja&_r=1"); 
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
      ), 
    ); 
  } 
}