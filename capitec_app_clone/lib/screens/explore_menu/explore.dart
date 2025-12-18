import 'package:capitec_app_clone/screens/explore_menu/tab_screens/capitec_connect.dart';
import 'package:capitec_app_clone/screens/explore_menu/tab_screens/global_one.dart';
import 'package:capitec_app_clone/screens/explore_menu/tab_screens/live_better.dart';
import 'package:flutter/material.dart';

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({super.key});

  @override
  State<ExploreMenu> createState() => _ExploreMenuState();
}

class _ExploreMenuState extends State<ExploreMenu> {
  final List<Widget> _tabScreens = [
    GlobalOne(),
    CapitecConnect(),
    LiveBetter(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text('Explore'),
          backgroundColor: Colors.blue[600],
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'GlobalOne'),
              Tab(text: 'Capitec Connect'),
              Tab(text: 'Live Better'),
            ],
          ),
        ),
        body: TabBarView(children: [..._tabScreens]),
      ),
    );
  }
}
