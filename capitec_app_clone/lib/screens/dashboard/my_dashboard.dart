import 'package:capitec_app_clone/components/custom_card.dart';
import 'package:capitec_app_clone/helper/build_favourite_card.dart';
import 'package:capitec_app_clone/screens/cards_management/main_account_screen.dart';
import 'package:capitec_app_clone/screens/user_profile/profile_screen.dart';
import 'package:flutter/material.dart';

class MyDashboard extends StatelessWidget {
  const MyDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.account_circle, size: 40, color: Colors.white),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'My Dashboard',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.indigo[900],
                    ),
                  ),
                  GestureDetector(
                    child: Row(
                      children: [
                        Text(
                          'Edit',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue[600],
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              CustomCard(
                title: 'Main Account',
                icon: Icons.account_balance_outlined,
                color: Colors.blue[600],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainAccountScreen(),
                    ),
                  );
                },
              ),
              CustomCard(
                title: 'Saving Plans',
                icon: Icons.savings_outlined,
                color: Colors.indigo[900],
                onTap: () {
                  // Handle tile tap
                },
              ),
              const SizedBox(height: 8),

              ElevatedButton.icon(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide(color: Colors.blue[600]!),
                  ),
                  minimumSize: const Size(368, 50),
                ),
                label: const Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.blue,
                  size: 25,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text(
                    'Live Better',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              CustomCard(
                title: 'Live Better',
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
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Favourites',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.indigo[900],
                    ),
                  ),
                  GestureDetector(
                    child: Row(
                      children: [
                        Text(
                          'Edit',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blue[600],
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.blue,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 2.0,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  buildFavouriteCard(
                    context,
                    Icons.people_outline,
                    'Pay beneficiary',
                  ),
                  buildFavouriteCard(
                    context,
                    Icons.emoji_objects_outlined,
                    'Buy electricity',
                  ),
                  buildFavouriteCard(
                    context,
                    Icons.sim_card_outlined,
                    'Capitec connect',
                  ),
                  buildFavouriteCard(context, Icons.paypal_rounded, 'PayPal'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
