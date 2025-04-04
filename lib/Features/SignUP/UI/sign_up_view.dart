import 'package:flutter/material.dart';
import 'package:qr_cdoe_based_attendance/Widgets/custom_text_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Username',
              showIcon: false,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Email',
              showIcon: false,
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: TextEditingController(),
              hintText: 'Password',
              showIcon: true,
              icon: 'assets/icons/eye.png',
              onTapIcon: () {
                // Handle icon tap
              },
            ),
          ],
        ),
      ),
    );
  }
}