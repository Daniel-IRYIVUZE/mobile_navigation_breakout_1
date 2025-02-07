import 'package:flutter/material.dart';
import 'product_detail.dart';

class Product {
  final String name;
  final String description;
  final int price;
  final Color color;

  Product({required this.name, required this.description, required this.price, required this.color});
}

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Pixel 1', description: 'Pixel is the most featureful phone ever', price: 800, color: Colors.blue),
    Product(name: 'Laptop', description: 'Laptop is the most productive development tool', price: 2000, color: Colors.green),
    Product(name: 'Tablet', description: 'Tablet is the most useful device for meetings', price: 150, color: Colors.yellow),
    Product(name: 'Pen Drive', description: 'Pendrive is the stylish phone ever', price: 100, color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Navigation")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              tileColor: product.color,
              title: Text(product.name, style: TextStyle(fontSize: 22, color: Colors.white)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(product: product),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
