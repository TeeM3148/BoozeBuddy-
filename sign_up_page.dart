import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Title
            Text(
              "Create Your Account",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Full Name Input
            TextField(
              decoration: InputDecoration(
                labelText: 'Full Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // PIN Input Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: 50,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        counterText: '', // Removes the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),

            // Confirm PIN Input Fields
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SizedBox(
                    width: 50,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        counterText: '', // Removes the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),

            // Sign-Up Button
            ElevatedButton(
              onPressed: () {
                // Add logic for sign-up and saving PIN
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
