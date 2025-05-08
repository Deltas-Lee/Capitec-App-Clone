import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScannerScreen extends StatelessWidget {
  const QrScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan to Pay'),
        backgroundColor: Colors.white,
      ),
      body: MobileScanner(
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          final String code =
              barcodes.isNotEmpty
                  ? barcodes.first.rawValue ?? 'Unknown'
                  : 'Unknown';
          showDialog(
            context: context,
            builder:
                (context) => AlertDialog(
                  title: const Text('Barcode Found!'),
                  content: Text('Code: $code'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context), //
                      child: const Text('OK'),
                    ),
                  ],
                ),
          );
        },
      ),
    );
  }
}
