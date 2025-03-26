import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Details'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Product Image
              Center(
                child: Image.asset(
                  'assets/product_placeholder.png', // Replace with the actual image
                  height: 200,
                ),
              ),
              SizedBox(height: 20),

              // Rating Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Icon(Icons.star, color: Colors.orange, size: 30);
                }),
              ),
              SizedBox(height: 20),

              // Product Name
              Text(
                "Product Name",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Product Cost
              Text(
                "Cost: \$100", // Replace with actual cost
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              SizedBox(height: 10),

              // Detailed Description
              Text(
                "Detailed Description: This is where the detailed information about the product goes. Replace this text with actual product details.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),

              // Add to Cart Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text('Add to Cart'),
                ),
              ),
              SizedBox(height: 30),

              // Related Products Section
              Text(
                "Related Products",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Related Products List
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Replace with the actual count
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      color: Colors.grey.shade300,
                      child: Center(child: Text("Product ${index + 1}")),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
