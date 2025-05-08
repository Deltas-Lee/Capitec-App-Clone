import 'package:capitec_app_clone/screens/user_profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserProfileScreen(),
                ),
              );
            },
          ),
          title: Center(
            child: const Text(
              'GlobalOne',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          backgroundColor: Colors.blue[600],
          actions: [
            IconButton(
              icon: const Icon(
                Icons.phone_in_talk_outlined,
                size: 40.0,
                color: Colors.white,
              ),
              onPressed: () {
                // Handle notification icon press
              },
            ),
          ],
        ),
      ),
    );
  }
}
