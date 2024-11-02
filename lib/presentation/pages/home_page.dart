import 'package:know_my_city/presentation/core/state_core.dart';
import 'package:know_my_city/presentation/widgets/ejes2_list.dart';
import 'package:know_my_city/presentation/widgets/ejes3_list.dart';
import 'package:know_my_city/presentation/widgets/ejes_list.dart';
import 'package:know_my_city/presentation/widgets/header_custom.dart';
import 'package:know_my_city/presentation/widgets/maracaiboantano.dart';
import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/widgets/main_footer.dart';
import 'package:provider/provider.dart';


class AppHome extends StatefulWidget {
  const AppHome({super.key});

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  late StateCore stateCore;
  bool _initialized = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    /*    if (!_initialized) {
      // Accede a Provider después de que se hayan configurado las dependencias
      // y el arbol de widget de go_router este instanciado.
      Future.delayed(Duration.zero, () {
        final stateCore = Provider.of<StateCore>(context, listen: false);
        stateCore.incrementCounter();
        print('home - contador de saltos o creaciones ${stateCore.counter}');
        print('Usuario registrado es: ${stateCore.isLoading}');
      });
      _initialized = true; // Evita ejecutar este bloque múltiples veces
    } */
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<StateCore>(
      builder: (context, coreState, child) {
        stateCore = coreState;
        stateCore.incrementCounter();
        print('home - contador de saltos o creaciones ${stateCore.counter}');
        print('Usuario registrado es: ${stateCore.isLoading}');
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Scaffold(
              body: Stack(
                children: [
                  Positioned.fill(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          HeaderCustom(),
                          const TravelPageContent(),
                          const EspaciosContent(),
                          const GastronomiaContent(),
                          const MaracaiboAntano(),
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
      },
    );
  }
}

