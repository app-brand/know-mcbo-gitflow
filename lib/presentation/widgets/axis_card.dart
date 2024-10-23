import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/domain/axi.dart';
import 'package:flutter/material.dart';

class AxisCard extends StatelessWidget {
  final Axi axi;
  final double width;
  const AxisCard({super.key, required this.axi, required this.width});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //var width = constraints.maxWidth;
        return Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: (29 / 1512) * (width),
            ),
            Container(
              width: (425 / 1512) * width,
              height: (602 / 1512) * width,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black54, // Shadow color
                  blurRadius: 0.1, // Shadow blur radius
                  spreadRadius: 0.1, // Shadow spread radius
                  offset: Offset(0, 1), // Changes the position of the shadow
                ),
              ]),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Image.asset(
                          axi.axis_image_url,
                          width: (425 / 1512) * width,
                          height: (439 / 1512) * width,
                        ),
                        Positioned(
                          bottom: 10,
                          child: Container(
                              width: (425 / 1512) * width,
                              height: (81 / 1512) * width,
                              decoration: const BoxDecoration(
                                color: AppTheme.greentColorTwoOpacity,
                              ),
                              child: Text(
                                axi.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'alcaldia_fonts',
                                    fontWeight: FontWeight.bold,
                                    fontSize: (25 / 1512) * width),
                              )),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        axi.axis_name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppTheme.primaryColor,
                            fontFamily: 'alcaldia_fonts',
                            fontWeight: FontWeight.bold,
                            fontSize: (40 / 1512) * width),
                      ),
                    ),
                    Stack(alignment: Alignment.bottomCenter, children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            axi.axis_description,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'alcaldia_fonts',
                                fontWeight: FontWeight.normal,
                                fontSize: (24 / 1512) * width),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -5,
                        child: Container(
                            width: (151 / 1512) * width,
                            height: (42 / 1512) * width,
                            decoration: BoxDecoration(
                                color: AppTheme.greentColorNoOpacity,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(width * (21 / 1512)))),
                            child: Text(
                              'Ver mas',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'alcaldia_fonts',
                                  fontWeight: FontWeight.bold,
                                  fontSize: (25 / 1512) * width),
                            )),
                      ),
                    ])
                  ],
                ),
              ),
            ),
            SizedBox(
              width: (29 / 1512) * (width),
            ),
          ],
        );
      },
    );
  }

  void openURL(String url) {
    //SystemChannels.platform.invokeMethod('SystemNavigator.pop', url);
  }
}
