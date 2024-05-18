
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('analytics'),
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