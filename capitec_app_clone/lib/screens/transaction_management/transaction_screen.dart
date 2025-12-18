import 'package:capitec_app_clone/components/custom_card.dart';
import 'package:flutter/material.dart';

class TransactionManageScreen extends StatelessWidget {
  const TransactionManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: const Text('Transact'),
        backgroundColor: Colors.blue[600],
        actions: [
          IconButton(
            icon: const Icon(
              Icons.lock_person_outlined,
              size: 40.0,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              title: 'Pay beneficiary',
              icon: Icons.people_outline,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
            CustomCard(
              title: 'PayPal',
              icon: Icons.paypal,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
            CustomCard(
              title: 'Pay bills',
              icon: Icons.payments_outlined,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
            CustomCard(
              title: 'Money Academy',
              icon: Icons.currency_exchange_outlined,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
            const SizedBox(height: 8),

            CustomCard(
              title: 'Buy electricity',
              icon: Icons.sync_alt_outlined,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
            CustomCard(
              title: 'Renew licence disc',
              icon: Icons.car_crash_outlined,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
            CustomCard(
              title: 'Play Lotto',
              icon: Icons.casino_outlined,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
            CustomCard(
              title: 'Trasfer money',
              icon: Icons.currency_exchange_outlined,
              iconColor: Colors.deepPurpleAccent,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
