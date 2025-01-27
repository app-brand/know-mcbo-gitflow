import 'package:flutter/material.dart';

import 'about_page.dart';
import 'maps_page.dart';
import '../dialogs-fixed/sign_in.dart';

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
    _tabController = TabController(length: 3, vsync: this);
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
        title: const Text('Explora Maracaibo'),
        bottom: mobileView
            ? null
            : TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(icon: Icon(Icons.home), text: 'Home'),
                  Tab(icon: Icon(Icons.info), text: 'About'),
                  Tab(icon: Icon(Icons.person), text: 'Profile'),
                ],
              ),
      ),
      drawer: mobileView
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                      _tabController.animateTo(0);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('About'),
                    onTap: () {
                      Navigator.pop(context);
                      _tabController.animateTo(1);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return SignIn();
                        },
                      );
                    },
                  ),
                ],
              ),
            )
          : null,
      body: TabBarView(
        controller: _tabController,
        children: const [
          MapsPage(),
          AboutUsPage(),
          SignIn(),
        ],
      ),
    );
  }
}

bool isMobile(BuildContext context) {
  var size = MediaQuery.of(context).size.width;
  return size < 600;
}
