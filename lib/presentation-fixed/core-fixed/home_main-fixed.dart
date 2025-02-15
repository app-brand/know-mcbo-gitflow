import 'package:flutter/material.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/map_page-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/about_about-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages-fixed/sign_in_page-fixed.dart';

class McboMain extends StatefulWidget {
  @override
  State<McboMain> createState() => _McboMainState();
}

class _McboMainState extends State<McboMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool mobileView = isMobile(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Conoce Maracaibo'),
        bottom: TabBar(
          controller: _tabController,
          physics: const NeverScrollableScrollPhysics(),
          tabs: const [
            Tab(icon: Icon(Icons.map_sharp), text: 'Explora'),
            Tab(
                icon: Icon(Icons.location_history_rounded),
                text: 'Perfil/Sesion'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MapFixed(),
          SignInPage(),
        ],
      ),
    );
  }
}

bool isMobile(BuildContext context) {
  var size = MediaQuery.of(context).size.width;
  return size < 700;
}
