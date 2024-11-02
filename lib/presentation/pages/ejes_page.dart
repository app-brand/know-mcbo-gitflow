import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/widgets/main_footer.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';

class EjesPage extends StatefulWidget {
  final String boxId;

  const EjesPage({Key? key, required this.boxId}) : super(key: key);

  @override
  _EjesPageState createState() => _EjesPageState();
}

class _EjesPageState extends State<EjesPage> {
  Map<String, dynamic>? boxData;

  @override
  void initState() {
    super.initState();
    _loadBoxData();
  }

  Future<void> _loadBoxData() async {
    try {
      final String response =
          await rootBundle.loadString('assets/json/ejes_informacion.json');
      final data = json.decode(response);
      setState(() {
        boxData = data[widget.boxId];
      });
    } catch (e) {
      print("Error al cargar el archivo JSON: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: boxData == null
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage(boxData!['imagen_principal'] ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          color: Colors.black.withOpacity(0.5),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "images/banner/LOGOFOMUTURBLANCO.png",
                                      width: 150,
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Inicio',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              routerCore.push('/maps'),
                                          child: Text(
                                            'Mapa de Turista',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Nosotros',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () => showDialog(
                                            context: context,
                                            builder: (context) =>
                                                SignInDialog(),
                                          ),
                                          child: Text(
                                            'Perfil',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.70),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80.0),
                                  child: Text(
                                    boxData!['titulo'] ?? '',
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Sección de introducción con línea vertical al lado
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 20.0),
                    child: Row(
                      children: [
                        Container(
                          width: 4,
                          height: 70,
                          color: const Color.fromRGBO(241, 196, 0, 1.00),
                        ),
                        const SizedBox(width: 16.0),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              boxData!['introduccion'] ?? '',
                              style: TextStyle(
                                fontSize: 36,
                                color: const Color.fromARGB(255, 0, 99, 65),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Contenedor de parrafo1 sin fondo ni sombra
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              boxData!['parrafo1'] ?? '',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                boxData!['imagen1'] ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Espacio adicional entre los dos Row
                  SizedBox(height: 50),
                  // Contenedor de parrafo2 sin fondo ni sombra
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 120, vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                boxData!['imagen2'] ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          flex: 3,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              boxData!['parrafo2'] ?? '',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  FooterWidget(),
                ],
              ),
            ),
    );
  }
}
