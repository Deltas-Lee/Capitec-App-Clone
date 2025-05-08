import 'package:capitec_app_clone/components/half_circle_painter.dart';
import 'package:capitec_app_clone/helper/build_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../auth/sign_in.dart';
import '../qr_code/qr_scanner_screen.dart' show QrScannerScreen;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Column(
          children: [
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text(
                'For me',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'sawubona',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'hallo',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),
            Text(
              'hello',
              style: GoogleFonts.nunitoSans(
                color: Color(0xFFFF1100),
                fontSize: 100,
                fontWeight: FontWeight.w900,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'molo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    'dumela',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('SmartMzansi Tech', style: TextStyle(fontSize: 22)),
            const SizedBox(height: 18),

            Expanded(
              flex: 6,
              child: GridView.count(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                crossAxisCount: 2,
                childAspectRatio: 2.0,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  buildCard(context, Icons.people_outline, 'Pay beneficiary'),
                  buildCard(
                    context,
                    Icons.emoji_objects_outlined,
                    'Buy electricity',
                  ),
                  buildCard(
                    context,
                    Icons.sim_card_outlined,
                    'Capitec connect',
                  ),
                  buildCard(context, Icons.paypal_rounded, 'PayPal'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignInScreen();
                      },
                    ),
                  );
                },
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(const Size(368, 50)),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all(Colors.blue[600]),
                  side: WidgetStateProperty.all(
                    BorderSide(
                      color: Colors.blue[600] ?? Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),

            Expanded(
              flex: 5,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // CustomPaint for the straight lines
                  Positioned(
                    bottom: 60,
                    left: 0,
                    right: 0,
                    child: CustomPaint(
                      size: const Size(double.infinity, 100),
                      painter: HalfCirclePainter(),
                    ),
                  ),
                  Positioned(
                    bottom: 35,

                    child: GestureDetector(
                      onTap: () async {
                        final result = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QrScannerScreen(),
                          ),
                        );
                        if (result != null) {
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Scanned code: $result')),
                          );
                        }
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            width: 4.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              spreadRadius: 1,
                              blurRadius: 2.0,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.qr_code_2_sharp,
                          size: 40,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 4.0,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Text('Scan to pay', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
