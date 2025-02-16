import 'package:know_my_city/presentation-legacy/core/app_theme.dart';
import 'package:flutter/material.dart';

class SecondRow extends StatelessWidget {
  const SecondRow({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        return Center(
          child: Container(
            color: AppTheme.primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 0.1461 * width,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'alcaldia_fonts',
                          fontSize: 0.0509 * width,
                          color: AppTheme.primaryColor,
                        ),
                        children: const [
                          TextSpan(
                              text: 'Descubre ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppTheme.accentColor,
                              )),
                          TextSpan(
                              text: 'qué hacer en Maracaibo',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 0.8586 * width,
                  child: Center(
                    child: SizedBox(
                      width: 0.9603 * width,
                      child: Text(
                        '¡No te pierdas la oportunidad de sumergirte en la esencia marabina y vivir experiencias inolvidables!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.0244 * width,
                          fontFamily: 'alcaldia_fonts',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.0476,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
