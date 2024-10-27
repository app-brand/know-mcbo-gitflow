import 'package:go_router/go_router.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/presentation/widgets/animate_banner.dart';
import 'package:know_my_city/presentation/widgets/axis_list.dart';
import 'package:know_my_city/presentation/widgets/ejes2_list.dart';
import 'package:know_my_city/presentation/widgets/ejes3_list.dart';
import 'package:know_my_city/presentation/widgets/ejes_list.dart';
import 'package:know_my_city/presentation/widgets/event_list.dart';
import 'package:know_my_city/presentation/widgets/first_row.dart';
import 'package:know_my_city/presentation/widgets/header_custom.dart';
import 'package:know_my_city/presentation/widgets/second_row.dart';
import 'package:know_my_city/presentation/widgets/navbar_custom.dart';
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
          body: Stack(
            children: [
              // Contenido de la página
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeaderCustom(),                      
                      const TravelPageContent(),
                      const EspaciosContent(),
                      const GastronomiaContent(),
                      const EventList(),                      
                      FooterWidget(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
