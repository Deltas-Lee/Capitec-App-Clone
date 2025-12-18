import 'package:capitec_app_clone/components/custom_card.dart';
import 'package:flutter/material.dart';

class GlobalOne extends StatelessWidget {
  const GlobalOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CustomCard(
            title: 'Main Account',
            subtitle: 'Day-to-day transactional account',
            icon: Icons.account_balance_outlined,
            color: Colors.blue[600],
            trailingIcon: Icons.arrow_forward_ios,
            onTap: () {
              // Handle tile tap
            },
          ),
          CustomCard(
            title: 'Save',
            subtitle: 'Access, Notice, Fixed and Tax-Free',
            icon: Icons.signal_cellular_alt_sharp,
            color: Colors.indigo[900],
            trailingIcon: Icons.arrow_forward_ios,
            onTap: () {
              // Handle tile tap
            },
          ),
          CustomCard(
            title: 'Credit',
            subtitle: 'Credit Card, Facilities, & Loans',
            icon: Icons.donut_large_rounded,
            color: Colors.redAccent[700],
            trailingIcon: Icons.arrow_forward_ios,
            onTap: () {
              // Handle tile tap
            },
          ),
          CustomCard(
            title: 'Insure',
            subtitle: 'Cover for you and your family',
            icon: Icons.health_and_safety_outlined,
            color: Colors.blueGrey,
            trailingIcon: Icons.arrow_forward_ios,
            onTap: () {
              // Handle tile tap
            },
          ),
        ],
      ),
    );
  }
}
