import 'package:aurora_software_project/constants.dart';
import 'package:aurora_software_project/makeupScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './newArrivalsScreen.dart';
import './salesScreen.dart';
import './skincareScreen.dart';
 

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mBackgroundColor,
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Image.asset('assets/images/Aurora-logo.png'),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(70.0), // Height of the TabBar
            child: Padding(
              padding: EdgeInsets.only(top: 10.0), // Add padding here
              child: TabBar(
                tabs: [
                  Tab(text: 'New arrivals'),
                  Tab(text: 'Makeup'),
                  Tab(text: 'Skincare'),
                  Tab(text: 'Sale'),
                ],
              ),
            ),
          ),
          leading: IconButton(
            padding: const EdgeInsets.only(top: 30.0, left: 20),
            icon: Image.asset('assets/images/menu.png', width: 30),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(top: 25, right: 20),
              icon: Image.asset('assets/images/shopping-cart.png', width: 36),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
        
         
          child: TabBarView(
                children: [ 
                  newArrivalsScreen(),
                  makeupScreen(),
                  skincareScreen(),
                  salesScreen(),


                ],
              ),
          
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF9B93E1),
          unselectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
