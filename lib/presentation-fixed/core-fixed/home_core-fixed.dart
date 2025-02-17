import 'package:flutter/material.dart';
import 'package:know_my_city/presentation-fixed/pages/map_page-fixed.dart';
import 'package:know_my_city/presentation-fixed/pages/sign_in/sign_in-page.dart';

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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/brand/sun_spriral.png',
              fit: BoxFit.cover,
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            const Text(
              'Conoce Maracaibo',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.map_sharp),
              text: 'Explora',
            ),
            Tab(
              icon: Icon(Icons.location_history_rounded),
              text: 'Perfil/Sesion',
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          MapScreen(),
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
