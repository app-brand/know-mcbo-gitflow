import 'package:flutter/material.dart';

bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 700;
bool isTablet(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return width >= 700 && width < 1200;
}
