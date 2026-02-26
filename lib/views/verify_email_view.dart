import 'package:flutter/material.dart';
import '../services/auth_service.dart';

class VerifyEmailView extends StatelessWidget {
  const VerifyEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = AuthService();

    return Scaffold(
      appBar: AppBar(title: const Text("Verify Email")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Silakan cek email untuk verifikasi"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await authService.sendEmailVerification();
              },
              child: const Text("Kirim ulang verifikasi"),
            ),
            TextButton(
              onPressed: () async {
                await authService.logout();
              },
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
