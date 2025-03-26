import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Information Section
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                    'assets/user_avatar.png',
                  ), // Replace with user image
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Name', // Replace with dynamic user name
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Email: user@example.com',
                    ), // Replace with dynamic email
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),

            // Order History Section
            Text(
              'Order History',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Replace with dynamic order count
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.receipt_long),
                    title: Text('Order #${index + 1}'),
                    subtitle: Text('Status: Delivered'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () {
                      // View order details
                    },
                  );
                },
              ),
            ),

            // Log Out Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Log out logic
                },
                child: Text('Log Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
