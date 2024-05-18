import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('orders'),
        ),
         floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Add a product',
        shape: const CircleBorder(),
         backgroundColor: Color(0xFF9B93E1),
          foregroundColor: Colors.white,
          child: Icon(
          Icons.add,
        ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}