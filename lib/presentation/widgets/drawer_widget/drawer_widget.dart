import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/utils/utils.dart';
import 'package:know_my_city/presentation/widgets/drawer_widget/responsive/laptop_drawer.dart';
import 'package:know_my_city/presentation/widgets/drawer_widget/responsive/mobile_drawer.dart';
import 'package:know_my_city/presentation/widgets/drawer_widget/responsive/tablet_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (isMobile(context)) {
      return const DrawerMobile(fontScale: 0.8);
    } else if (isTablet(context)) {
      return const DrawerTablet(fontScale: 0.9);
    } else {
      return const DrawerLaptop(fontScale: 1);
    }
  }
}
