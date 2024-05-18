import 'package:flutter/material.dart';

class productsScreen extends StatefulWidget {
  const productsScreen({Key? key}) : super(key: key);

  @override
  State<productsScreen> createState() => _productsScreenState();
}

class _productsScreenState extends State<productsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
             color: Color(0xFF9B93E1)
             
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Padding(padding: EdgeInsets.only( top: 20),
                child: Image.asset(
                  'assets/images/Aurora-logo.png',
                  width: 150,
                  height: 150,
                  color: Colors.white
                ), 
                )
               
              ),
              const 
                Padding(
                  padding: EdgeInsets.only(top: 40
                ),
               child: Text('Admin', 
               style: TextStyle(
                 color: Colors.white,),
                 ), 
                 ),
               
               
             
            ],
          ),
        ),
      ),
      body: Center(
        child: Text('Products'),
        ),
    );
        
  }
}