import 'package:flutter/material.dart';
import 'package:know_my_city/legacy-presentation/map_page-fixed.dart';
import 'package:know_my_city/presentation/pages/map/map_screen.dart';
import 'package:know_my_city/presentation/pages/sign_in/sign_in-page.dart';
import 'package:know_my_city/presentation/widgets/drawer_widget/drawer_widget.dart';

class LaptopHomeLayout extends StatefulWidget {
  const LaptopHomeLayout({super.key});

  @override
  State<LaptopHomeLayout> createState() => _LaptopHomeLayoutState();
}

class _LaptopHomeLayoutState extends State<LaptopHomeLayout>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conoce Maracaibo'),
        actions: [
          TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: const [
              Tab(icon: Icon(Icons.map), text: 'Mapa'),
              Tab(icon: Icon(Icons.person), text: 'Perfil'),
            ],
          ),
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ],
      ),
      endDrawer: CustomDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          MapPage(),
          SignInPage(),
        ],
      ),
    );
  }
}
