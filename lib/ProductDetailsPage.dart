import 'package:aurora_software_project/makeupScreen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' ${product.name}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
             Image.asset(
              product.image,
              width: 400, // Set the width of the image
              height: 400, // Set the height of the image
              fit: BoxFit.contain, // Adjust the fit as needed
            ),
            SizedBox(height: 20),
          
            Text('Product Name: ${product.name}'),
            Text('Price: \$${product.price.toStringAsFixed(2)}'),
            // Add more details as needed
          ],
        ),
      ),
    );
  }
}