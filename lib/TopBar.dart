import 'package:aurora_software_project/cart.dart';
import 'package:aurora_software_project/makeupScreen.dart';
import 'package:aurora_software_project/newArrivalsScreen.dart';
import 'package:aurora_software_project/salesScreen.dart';
import 'package:aurora_software_project/shopNow.dart';
import 'package:aurora_software_project/skincareScreen.dart';
import 'package:flutter/material.dart';
import 'package:aurora_software_project/constants.dart';

class MyTopBar extends StatefulWidget {
  const MyTopBar({Key? key}) : super(key: key);

  @override
  _MyTopBarState createState() => _MyTopBarState();
}

class _MyTopBarState extends State<MyTopBar>   {

  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mBackgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0,),
            child: Image.asset('assets/images/Aurora-logo.png', width: 150, height: 150,color: myColor,),
          ),
          bottom: const TabBar(
             indicator: null,
            padding: EdgeInsets.only(top: 10.0),
            tabs: <Widget>[
             
            
              Tab(
                text: 'New Arrivals' ,
                
              ),
              Tab(
                  text: 'Makeup',
              ),
              Tab(
                 text: 'SkinCare',
              ),
              Tab(
                 text: 'Sales',
              ),
            ],
            
          ),
          leading: IconButton(
            padding: const EdgeInsets.only(top: 20.0, left: 20),
            icon: Image.asset('assets/images/menu.png', width: 30), color: myColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ShopNow()),
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(top: 20, right: 20),
              icon: Image.asset('assets/images/shopping-cart.png', width: 36, color: myColor,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const MyCartScreen()),
                );
              },
            )
          ],
        ),
        body: TabBarView(
          children: <Widget>[
           
                  newArrivalsScreen(),
                  makeupScreen(),
                  skincareScreen(),
                  salesScreen(),


                ],
          
        ),
      ),
    );
  }
}
