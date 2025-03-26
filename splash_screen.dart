import 'package:flutter/material.dart';
import 'dart:async';
import 'sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      // Navigate to the Sign-In Page after 3 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo
            Image.asset('assets/logo.png', height: 150),
            SizedBox(height: 20),
            // App Tagline
            Text(
              "Sip. Savor. Celebrate.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
