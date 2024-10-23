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
        return Scaffold(
          appBar: AppBar(
            leadingWidth: 0.0271 * (width),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "images/brand/fomutur.png", // Corregida la ruta de la imagen
                  width: 0.1448 * (width),
                  height: 0.0397 * (width),
                  //fit: BoxFit.contain,
                ),
              ],
            ),
            toolbarHeight: 0.0549 * (width),
            backgroundColor: Colors.white,
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    child: SizedBox(
                      height: 0.0549 * (width),
                      //width: 0.0549 * (width),
                      child: Center(
                        child: Text(
                          '¿Quiénes somos?',
                          style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontSize: 0.0185 * (width),
                            fontFamily: 'alcaldia_fonts',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      context.go('/maps');
                      print('¿Quiénes somos?');
                    },
                  ),
                  SizedBox(
                    height: 0.0549 * (width),
                    width: 0.0549 * (width),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          print('Persona perfil');
                        },
                        iconSize: 0.0355 * (width),
                        color: AppTheme.primaryColor,
                        icon: const Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.0549 * (width),
                    width: 0.0549 * (width),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          context.go('/maps');
                        },
                        iconSize: 0.0355 * (width),
                        color: AppTheme.primaryColor,
                        icon: const Icon(Icons.location_on),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.0549 * (width),
                    child: Center(
                      child: IconButton(
                        onPressed: () {
                          print('Persona ayuda');
                        },
                        iconSize: 0.0355 * (width),
                        color: AppTheme.primaryColor,
                        icon: const Icon(Icons.help),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const MainPage(),
                const OneRow(),
                const SecondRow(),
                const EventList(),
                SizedBox(
                  height: 0.0496 * width,
                ),
                const AxisList(),
                SizedBox(height: 10), // Espacio adicional antes del footer
                FooterWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
