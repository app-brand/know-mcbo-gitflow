import 'package:know_my_city/presentation-legacy/core/app_theme.dart';
import 'package:know_my_city/domain/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EventWidget extends StatelessWidget {
  final Event event;
  final double width;
  const EventWidget({super.key, required this.event, required this.width});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        //var width = constraints.maxWidth;
        return Row(
          children: [
            SizedBox(
              width: (13 / 1512) * width,
            ),
            Container(
              width: (406 / 1512) * width,
              height: (512 / 1512) * width,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black54, // Shadow color
                  blurRadius: 0.5, // Shadow blur radius
                  spreadRadius: 0.5, // Shadow spread radius
                  offset: Offset(0, 2), // Changes the position of the shadow
                ),
              ]),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Image.asset(
                            event.imageUrl,
                            width: (406 / 1512) * width,
                            height: (315 / 1512) * width,
                          ),
                          Container(
                              width: (406 / 1512) * width,
                              height: (19 / 1512) * width,
                              decoration: const BoxDecoration(
                                color: AppTheme.greentColorOpacity,
                              )),
                        ],
                      ),
                    ),
                    Container(
                        width: (406 / 1512) * width,
                        height: (19 / 1512) * width,
                        decoration: const BoxDecoration(
                          color: AppTheme.greentColorNoOpacity,
                        )),
                    SizedBox(
                      height: (70 / 1512) * width,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          event.title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'alcaldia_fonts',
                            height: 0.9,
                            color: AppTheme.primaryColor,
                            fontSize: (26 / 1512) * width,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          //height: (45 / 1512) * width,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Fecha: ${event.date}',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'alcaldia_fonts',
                                color: Colors.black,
                                height: 0.9,
                                fontSize: (20 / 1512) * width,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          //height: (45 / 1512) * width,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              'Lugar: ${event.place}',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontFamily: 'alcaldia_fonts',
                                color: Colors.black,
                                fontSize: (20 / 1512) * width,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            openURL(event.link);
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              top: 10,
                            ),
                            child: Text(
                              'Link red social',
                              style: TextStyle(
                                fontSize: (20 / 1512) * width,
                                fontFamily: 'alcaldia_font',
                                color: AppTheme.greentColorOpacity,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        /* Image.asset(
                          "images/brand/sun_spiral.png",
                          width: (5 / 1512) * width,
                          height: (5 / 1512) * width,
                          //fit: BoxFit.cover,
                        ) */
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: (13 / 1512) * width,
            ),
          ],
        );
      },
    );
  }

  void openURL(String url) {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop', url);
  }
}
