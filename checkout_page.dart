import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Order Summary
            Text(
              'Order Summary',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 3, // Replace with dynamic item count
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset(
                      'assets/product_placeholder.png',
                    ), // Replace with product image
                    title: Text(
                      'Product Name ${index + 1}',
                    ), // Replace with dynamic name
                    subtitle: Text(
                      'Price: \$${(index + 1) * 10}',
                    ), // Replace with dynamic price
                  );
                },
              ),
            ),
            SizedBox(height: 10),

            // Total Cost
            Text(
              'Total: \$100', // Replace with dynamic total
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Payment Method Section
            Text(
              'Payment Method',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              items: [
                DropdownMenuItem(value: 'PayPal', child: Text('PayPal')),
                DropdownMenuItem(
                  value: 'Credit Card',
                  child: Text('Credit Card'),
                ),
              ],
              onChanged: (value) {
                // Handle payment selection
              },
              hint: Text('Select a payment method'),
            ),
            SizedBox(height: 20),

            // Confirm and Pay Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle payment and place order
                },
                child: Text('Confirm and Pay'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
