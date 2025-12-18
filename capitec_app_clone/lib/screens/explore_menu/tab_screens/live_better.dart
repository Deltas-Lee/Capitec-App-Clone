import 'package:capitec_app_clone/components/custom_card.dart';
import 'package:flutter/material.dart';

class LiveBetter extends StatelessWidget {
  const LiveBetter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomCard(
            title: 'Live Better',
            subtitle: 'Real rewards, real cashback',
            icon: Icons.living_outlined,
            iconColor: Colors.deepPurpleAccent,
            onTap: () {},
          ),
          CustomCard(
            title: 'Money Academy',
            subtitle: 'Get money smart with free learning',
            icon: Icons.send_outlined,
            iconColor: Colors.deepPurpleAccent,
            onTap: () {},
          ),
          Row(
            children: [
              Text(
                'Partners',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          CustomCard(
            title: 'EasyEquities',
            iconColor: Colors.pinkAccent,
            subtitle: 'Investing made easy',
            icon: Icons.shop_2_outlined,
            onTap: () {},
          ),
          CustomCard(
            title: 'GetSmarter',
            subtitle: 'Study further for less',
            icon: Icons.school,
            iconColor: Colors.pink,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
