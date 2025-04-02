import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QRCodeView extends StatelessWidget {
  QRCodeView({super.key});

  final MobileScannerController cameraController = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
    torchEnabled: false,
    autoStart: true,
    returnImage: false,
    formats: const [BarcodeFormat.qrCode],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MobileScanner(
          controller: cameraController,
          onDetect: (barcodes) {
            final String? code = barcodes.barcodes.first.rawValue;
              log('QR Code: $code');
          },
        ),
      ),
    );
  }
}
