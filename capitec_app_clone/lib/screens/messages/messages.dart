import 'package:capitec_app_clone/components/custom_list_tile.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

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
        title: const Text('Messages'),
        backgroundColor: Colors.blue[600],
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, size: 40.0, color: Colors.white),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'May 2025',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[900],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder:
                    (context, index) =>
                        Divider(color: Colors.grey[300], thickness: 1),
                itemBuilder: (context, index) {
                  return CustomListTile(
                    title:
                        'Capitec: Payment R16000.00 from MAIN ACCOUNT; Ref: Client',
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
