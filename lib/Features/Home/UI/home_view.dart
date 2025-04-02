import 'package:flutter/material.dart';
import 'package:qr_cdoe_based_attendance/Features/QR%20Code/UI/qr_code_view.dart';
import 'package:qr_cdoe_based_attendance/Widgets/custom_elevated_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final String text = "Scan QR Code";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomElevatedButton(
          text: text,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QRCodeView()),
            );
          },
        ),
      ),
    );
  }
}
