import 'package:flutter/material.dart';
import 'package:capitec_app_clone/screens/cards_management/cards_screen.dart';
import 'package:capitec_app_clone/screens/dashboard/my_dashboard.dart';
import 'package:capitec_app_clone/screens/explore_menu/explore.dart';
import 'package:capitec_app_clone/screens/messages/messages.dart';
import 'package:capitec_app_clone/screens/transaction_management/transaction_screen.dart';

class BottomNavItems extends StatefulWidget {
  const BottomNavItems({super.key});

  @override
  State<BottomNavItems> createState() => _BottomNavItemsState();
}

class _BottomNavItemsState extends State<BottomNavItems> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const MyDashboard(),
    const CardsScreen(),
    const TransactionManageScreen(),
    const MessagesScreen(),
    const ExploreMenu(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // stops nav bar from shifting
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
          iconSize: 36,
          selectedFontSize: 14.0,
          unselectedFontSize: 14.0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedItemColor: const Color.fromARGB(255, 126, 119, 119),
          selectedItemColor: Colors.blue[600],
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.wallet),
              label: 'Cards',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.sync_alt_outlined),
              label: 'Transact',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.chat_outlined),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.apps_outlined),
              label: 'Explore',
            ),
          ],
        ),
      ),
    );
  }
}
