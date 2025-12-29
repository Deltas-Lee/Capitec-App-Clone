import 'package:capitec_app_clone/components/balance_info_sheet.dart';
import 'package:capitec_app_clone/components/custom_list_tile.dart';
import 'package:flutter/material.dart';

class MainAccountScreen extends StatefulWidget {
  const MainAccountScreen({super.key});

  @override
  State<MainAccountScreen> createState() => _MainAccountScreenState();
}

class _MainAccountScreenState extends State<MainAccountScreen> {
  // Sample transaction data
  final List<Map<String, dynamic>> allTransactions = [
    {
      'title': 'Salary Deposit',
      'subtitle': 'Dec 20, 2025',
      'amount': '+R50000.00',
      'isIncome': true,
    },
    {
      'title': 'Checkers Sixty60',
      'subtitle': 'Dec 19, 2025',
      'amount': '-R450.75',
      'isIncome': false,
    },
    {
      'title': 'Girlfriend Allowance',
      'subtitle': 'Dec 18, 2025',
      'amount': '-R3000.00',
      'isIncome': false,
    },
    {
      'title': 'Electricity Bill',
      'subtitle': 'Dec 17, 2025',
      'amount': '-R700.00',
      'isIncome': false,
    },
    {
      'title': 'Transfer from Friend',
      'subtitle': 'Dec 16, 2025',
      'amount': '+R2000.00',
      'isIncome': true,
    },
    {
      'title': 'Restaurant Payment',
      'subtitle': 'Dec 15, 2025',
      'amount': '-R1280.50',
      'isIncome': false,
    },
    {
      'title': 'Freelance Payment',
      'subtitle': 'Dec 16, 2025',
      'amount': '+R12000.00',
      'isIncome': true,
    },
  ];

  late List<Map<String, dynamic>> filteredTransactions;

  @override
  void initState() {
    super.initState();
    filteredTransactions = allTransactions;
  }

  void _filterTransactions(String filter) {
    setState(() {
      if (filter == 'income') {
        filteredTransactions =
            allTransactions.where((t) => t['isIncome'] == true).toList();
      } else if (filter == 'expense') {
        filteredTransactions =
            allTransactions.where((t) => t['isIncome'] == false).toList();
      } else {
        filteredTransactions = allTransactions;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Main Account',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue[600],
          elevation: 0,
          automaticallyImplyLeading: true,
        ),
        body: Column(
          children: [
            // Balance and Available Box
            Container(
              color: Colors.blue[600],
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        builder:
                            (context) =>
                                const BalanceInfoSheet(type: 'available'),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'R118000.00',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(width: 1, height: 60, color: Colors.white30),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        builder:
                            (context) =>
                                const BalanceInfoSheet(type: 'balance'),
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Balance',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'R120000.50',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Tabs
            TabBar(
              labelColor: Colors.blue[600],
              unselectedLabelColor: Colors.grey[500],
              indicatorColor: Colors.blue[600],
              onTap: (index) {
                if (index == 0) {
                  _filterTransactions('all');
                } else if (index == 1) {
                  _filterTransactions('income');
                } else {
                  _filterTransactions('expense');
                }
              },
              tabs: const [
                Tab(text: 'All'),
                Tab(text: 'Money In'),
                Tab(text: 'Money Out'),
              ],
            ),
            // Transactions List
            Expanded(
              child:
                  filteredTransactions.isEmpty
                      ? Center(
                        child: Text(
                          'No transactions',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16,
                          ),
                        ),
                      )
                      : ListView.separated(
                        itemCount: filteredTransactions.length,
                        separatorBuilder:
                            (context, index) =>
                                Divider(color: Colors.grey[300], thickness: 1),
                        itemBuilder: (context, index) {
                          final transaction = filteredTransactions[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: CustomListTile(
                              title: transaction['title'],
                              subtitle: transaction['subtitle'],
                              color:
                                  transaction['isIncome']
                                      ? Colors.green
                                      : Colors.red,
                              onTap: () {
                                // Handle transaction tap
                              },
                              trailing: transaction['amount'],
                              customTrailing: true,
                              trailingColor:
                                  transaction['isIncome']
                                      ? Colors.green
                                      : Colors.red,
                            ),
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
