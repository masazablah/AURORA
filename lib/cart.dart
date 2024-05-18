import 'package:aurora_software_project/TopBar.dart';
import 'package:aurora_software_project/shopNow.dart';
import 'package:flutter/material.dart';
import 'package:aurora_software_project/BottomBar.dart';
//import 'package:software_p/bottom_nav_bar.dart';
//import 'package:software_p/custom_scalfold.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(
        initialIndex: 3,
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0), // Adjust the padding as needed
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF9B93E1) // Example font size
                ),
              ),
            ),
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  text: 'Cart',
                ),
                Tab(
                  text: 'Favourite',
                ),
              ],
              labelStyle: TextStyle(
                fontSize: 20.0, // Adjust the font size of the tab labels
                color: Color(
                    0xFF9B93E1), // Adjust the color of the selected tab label
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.shopping_bag_outlined, // Your icon
                      size: 48.0, // Adjust the size of the icon
                      color: const Color(
                          0xFF9B93E1), // Adjust the color of the icon
                    ),
                    const SizedBox(
                        height:
                            16.0), // Add space between the icon and the text
                    const Text(
                      'YOUR CART IS EMPTY',
                      style: TextStyle(
                        fontSize: 16.0, // Adjust the font size of the text
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    const Text(
                      'You have no items in your cart \n  at the moment',
                      style: TextStyle(
                        fontSize: 16.0, // Adjust the font size of the text
                        color: Color.fromARGB(255, 136, 135, 138),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      width: 200, // Adjust the width of the button
                      height: 50, // Adjust the height of the button
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 251, 250, 252)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF9B93E1)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the border radius
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ShopNow()));
                        },
                        child: const Text('Start Shopping'),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text("It's rainy here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
