import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/widgets/navbar_custom.dart';

// TODO: refactorizar, para rendirizar con gradientes y consultar
// como materializar una transicion que incluya talvez un relempago o algo asociado al sol.
  @override
  Widget build(BuildContext context) {
    return BannerCustom();
  }


class BannerCustom extends StatelessWidget {
  const BannerCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;
        return Stack(
          alignment: Alignment.center,
          children: [
            // Imagen estática que ocupa todo el primer frame
            Container(
              width: width,
              height: height * 0.5, // Ajusta la altura según tus necesidades
              child: Image.asset(
                'assets/images/banner/Rafael_Urdaneta_Bridge_in_Maracaibo.jpg', // Ruta correcta de la imagen
                fit: BoxFit.cover,
              ),
            ),
            // Navbar sobreposicionado
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: NavbarCustom(isMobile: width < 600),
            ),
          ],
        );
      },
    );
  }
}
