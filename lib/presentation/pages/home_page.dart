import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/widgets/animate_banner.dart';
import 'package:know_my_city/presentation/widgets/axis_list.dart';
import 'package:know_my_city/presentation/widgets/event_list.dart';
import 'package:know_my_city/presentation/widgets/first_row.dart';
import 'package:know_my_city/presentation/widgets/second_row.dart';
import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/widgets/main_footer.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;

        // Definir breakpoints para dispositivos
        bool isMobile = width < 600;

        return Scaffold(
          appBar: AppBar(
            leadingWidth: 150, // Tamaño fijo del leadingWidth
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "images/brand/fomutur.png", // Ruta de la imagen
                  width: 200, // Tamaño fijo para el logo
                  height: 100, // Tamaño fijo para el logo
                ),
              ],
            ),
            toolbarHeight: 80, // Tamaño fijo para la altura del AppBar
            backgroundColor: Colors.white,
            actions: isMobile
                ? [
                    // Cuando es vista móvil, se muestra un PopupMenuButton en lugar de las opciones
                    PopupMenuButton<int>(
                      icon: Icon(Icons.more_vert, color: AppTheme.primaryColor),
                      onSelected: (int value) {
                        switch (value) {
                          case 0:
                            context.go('/maps');
                            break;
                          case 1:
                            print('Persona perfil');
                            break;
                          case 2:
                            context.go('/maps');
                            break;
                          case 3:
                            print('Persona ayuda');
                            break;
                        }
                      },
                      itemBuilder: (BuildContext context) {
                        return [
                          PopupMenuItem<int>(
                            value: 0,
                            child: Text(
                              '¿Quiénes somos?',
                              style: TextStyle(
                                color: AppTheme.primaryColor,
                                fontSize: 18, // Tamaño fijo de fuente
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          PopupMenuItem<int>(
                            value: 1,
                            child: Row(
                              children: [
                                Icon(Icons.person, color: AppTheme.primaryColor),
                                const SizedBox(width: 8),
                                Text('Perfil'),
                              ],
                            ),
                          ),
                          PopupMenuItem<int>(
                            value: 2,
                            child: Row(
                              children: [
                                Icon(Icons.location_on, color: AppTheme.primaryColor),
                                const SizedBox(width: 8),
                                Text('Ubicación'),
                              ],
                            ),
                          ),
                          PopupMenuItem<int>(
                            value: 3,
                            child: Row(
                              children: [
                                Icon(Icons.help, color: AppTheme.primaryColor),
                                const SizedBox(width: 8),
                                Text('Ayuda'),
                              ],
                            ),
                          ),
                        ];
                      },
                    )
                  ]
                : [
                    // Para tablets y escritorio, se mantienen las opciones como botones en la barra
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          child: const SizedBox(
                            height: 60, // Tamaño fijo
                            child: Center(
                              child: Text(
                                '¿Quiénes somos?',
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontSize: 18, // Tamaño fijo de fuente
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            context.go('/maps');
                          },
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                print('Persona perfil');
                              },
                              iconSize: 30, // Tamaño fijo del ícono
                              color: AppTheme.primaryColor,
                              icon: const Icon(Icons.person),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                context.go('/maps');
                              },
                              iconSize: 30, // Tamaño fijo del ícono
                              color: AppTheme.primaryColor,
                              icon: const Icon(Icons.location_on),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          child: Center(
                            child: IconButton(
                              onPressed: () {
                                print('Persona ayuda');
                              },
                              iconSize: 30, // Tamaño fijo del ícono
                              color: AppTheme.primaryColor,
                              icon: const Icon(Icons.help),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
          ),
          body: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MainPage(),
                const OneRow(),
                const SecondRow(),
                const EventList(),
                SizedBox(
                  height: 40, // Tamaño fijo del espaciado
                ),
                const AxisList(),
              ],
            ),
          ),
        );
      },
    );
  }
}
