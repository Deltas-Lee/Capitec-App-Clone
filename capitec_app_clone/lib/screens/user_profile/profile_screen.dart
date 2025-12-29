import 'package:capitec_app_clone/components/bottom_nav_items.dart';
import 'package:capitec_app_clone/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Hello Mzansi WebApps',
                style: TextStyle(
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              IconButton(
                onPressed:
                    () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavItems(),
                        ),
                      ),
                    },
                icon: Icon(
                  Icons.close_sharp,
                  size: 30,
                  color: Colors.blue[600],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(75.0),
            child: ElevatedButton(
              onPressed:
                  () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    ),
                  },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: Colors.blue[600]),
                  const SizedBox(width: 10),
                  Text('Sign Out', style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
