// import 'package:flutter/material.dart';
// import 'package:mobile_scanner/mobile_scanner.dart';

// class QrScannerPage extends StatelessWidget {
//   const QrScannerPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Scan Attendance QR"),
//       ),
//       body: MobileScanner(
//         onDetect: (BarcodeCapture capture) {
//           final String? qrValue =
//               capture.barcodes.first.rawValue;

//           if (qrValue != null) {
//             Navigator.pop(context);

//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text("Attendance marked: $qrValue"),
//               ),
//             );

//             // 👉 Send qrValue to backend here
//           }
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrScannerPage extends StatelessWidget {
  const QrScannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Scan Attendance QR"),
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          // 🔹 CAMERA VIEW
          MobileScanner(
            onDetect: (BarcodeCapture capture) {
              final String? qrValue =
                  capture.barcodes.first.rawValue;

              if (qrValue != null) {
                Navigator.pop(context);

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Attendance marked: $qrValue"),
                  ),
                );

                // 👉 Send qrValue to backend here
              }
            },
          ),

          // 🔹 DARK OVERLAY
          Container(
            color: Colors.black.withOpacity(0.5),
          ),

          // 🔹 SCAN AREA
          Center(
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.green,
                  width: 3,
                ),
              ),
            ),
          ),

          // 🔹 HINT TEXT
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              children: const [
                Text(
                  "Align the QR code within the frame",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Attendance will be marked automatically",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
