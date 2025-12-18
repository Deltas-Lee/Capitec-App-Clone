import 'package:flutter/material.dart';

class CapitecConnect extends StatelessWidget {
  const CapitecConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'lib/assets/images/capitect_connect.jpeg',
          height: 150,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
