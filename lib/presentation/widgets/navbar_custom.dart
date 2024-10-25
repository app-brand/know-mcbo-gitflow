import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class NavbarCustom extends StatelessWidget {
  const NavbarCustom({
    super.key,
    required this.isMobile,
  });

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 150, // Tamaño fijo del leadingWidth
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "images/banner/LOGOFOMUTURBLANCO.png", // Ruta de la imagen
            width: 200, // Tamaño fijo para el logo
            height: 100, // Tamaño fijo para el logo
          ),
        ],
      ),
      toolbarHeight: 80, // Tamaño fijo para la altura del AppBar
      backgroundColor: Colors.transparent,
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
                    const PopupMenuItem<int>(
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
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.person, color: AppTheme.primaryColor),
                          const SizedBox(width: 8),
                          Text('Perfil'),
                        ],
                      ),
                    ),
                    const PopupMenuItem<int>(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: AppTheme.primaryColor),
                          const SizedBox(width: 8),
                          Text('Ubicación'),
                        ],
                      ),
                    ),
                    const PopupMenuItem<int>(
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
    );
  }
}
