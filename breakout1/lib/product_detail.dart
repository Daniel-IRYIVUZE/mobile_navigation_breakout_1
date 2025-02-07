import 'package:flutter/material.dart';
import 'product_list.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              color: product.color,
              padding: EdgeInsets.all(20),
              child: Text(
                product.name,
                style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Text(product.description, style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text("Price: \$${product.price}", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
