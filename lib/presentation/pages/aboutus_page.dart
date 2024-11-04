import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:know_my_city/presentation/core/state_core.dart';
import 'package:know_my_city/presentation/widgets/main_footer.dart';
import 'package:know_my_city/presentation/dialogs/sign_in_dialog.dart';
import 'package:know_my_city/presentation/core/router_core.dart';
import 'package:provider/provider.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateCore = Provider.of<StateCore>(context, listen: false);
      stateCore.checkUserState();
    });
  }

  @override
  Widget build(BuildContext context) {
    final stateCore = Provider.of<StateCore>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/aboutus/header_aboutus.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        'Descubre más a fondo quiénes somos',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "images/banner/LOGOFOMUTURBLANCO.png",
                          width: 200,
                          height: 100,
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
                                routerCore.push('/');
                              },
                              child: Text(
                                'Inicio',
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            TextButton(
                              onPressed: () {
                                if(stateCore.loggedIn){
                                  routerCore.push('/maps');
                                } else {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Acceso Denegado'),
                                        content: const Text('Registrate o inicia sesión para disfrutar del mapa y empezar a conocer Maracaibo.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: const Text('Cerrar'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }                                                                     
                              },
                              child: Text(
                                'Mapa de Turista',
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            TextButton(
                              onPressed: () {
                                routerCore.push('/aboutus');
                              },
                              child: Text(
                                'Nosotros',
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const SignInDialog();
                                  },
                                );
                              },
                              child: Text(
                                'Perfil',
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20.0),
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
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        '¿Quiénes somos?',
                        style: TextStyle(
                          fontSize: 36,
                          color: Color.fromARGB(255, 0, 99, 65),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Somos una fundación que tiene personalidad jurídica propia y capacidad de realizar para realizar todos los actos de naturaleza civil necesarios para el cumplimiento de sus fines, a través de una gestión descentralizada que le permita desarrollar un eficaz funcionamiento, conforme a su naturaleza jurídica es una institución social sin fines de lucro que se regirá de la materia correspondiente, vigente o futuras.',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
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
                          'assets/images/aboutus/fomutur1.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(16.0),
                      child: const Text(
                        'Misión y Visión',
                        style: TextStyle(
                          fontSize: 36,
                          color: Color.fromARGB(255, 0, 99, 65),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Container(
                    width: 4,
                    height: 70,
                    color: const Color.fromRGBO(241, 196, 0, 1.00),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          'assets/images/aboutus/I.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nuestra misión es funcionar como una fundación municipal que apoya el financiamiento del diseño, formulación y ejecución de proyectos turísticos, para promover Maracaibo como un destino turístico que capte el interés social en habitantes y visitantes.',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Además, nuestra visión se enfoca en ser una fundación de excelencia en Maracaibo con el fin de apoyar, fomentar e impulsar las actividades turísticas como factor de desarrollo sustentable de la economía local, logrando recalcar las zonas de turismo en la localidad.',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: Colors.grey[700],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}





