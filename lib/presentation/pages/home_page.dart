import 'package:know_my_city/presentation/widgets/ejes_list.dart';
import 'package:know_my_city/presentation/widgets/event_list.dart';
import 'package:know_my_city/presentation/widgets/header_custom.dart';
//import 'package:know_my_city/presentation/widgets/maracaiboAntano.dart';
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
                      /* const MaracaiboAntano(), */
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
