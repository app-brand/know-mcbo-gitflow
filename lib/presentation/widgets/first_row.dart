import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:flutter/material.dart';

class OneRow extends StatelessWidget {
  const OneRow({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        return Container(
          color: Colors.white,
          width: width,
          height: 0.1263 * width,
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '¡Te presentamos lo nuestro!',
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontSize: 0.0496 * width,
                        fontFamily: 'alcaldia_fonts',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'alcaldia_fonts',
                          fontSize: 0.0211 * width,
                          color: AppTheme.primaryColor,
                        ),
                        children: const [
                          TextSpan(
                            text: 'Conoce la ciudad y su historia ',
                          ),
                          TextSpan(
                            text: '¡desde cualquier parte del mundo!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
