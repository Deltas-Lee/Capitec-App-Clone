import 'package:capitec_app_clone/screens/auth/forgot_pin.dart';
import 'package:flutter/material.dart';

import '../screens/dashboard/my_dashboard.dart';

/// Helper method to build a card
Widget buildCard(BuildContext dialogContext, IconData icon, String text) {
  return GestureDetector(
    onTap: () {
      showDialog(
        context: dialogContext,
        builder: (dialogContext) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            content: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                'Sign In to Continue',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Enter Remote PIN',
                      style: TextStyle(fontSize: 14.0, color: Colors.black),
                    ),
                    const SizedBox(width: 25.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          dialogContext,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPin(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot PIN?',
                        style: TextStyle(fontSize: 14.0, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Cancel',
                      style: TextStyle(fontSize: 14.0, color: Colors.blue),
                    ),
                    const SizedBox(width: 25.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          dialogContext,
                          MaterialPageRoute(
                            builder: (context) => const MyDashboard(),
                          ),
                        );
                      },
                      child: const Text(
                        'OK',
                        style: TextStyle(fontSize: 14.0, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      );
    },
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30.0, color: Colors.blue[600]),
          Text(
            text,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    ),
  );
}
