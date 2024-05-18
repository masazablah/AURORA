import 'package:aurora_software_project/admin/PostsScreen.dart';
import 'package:aurora_software_project/admin/add_product_screen.dart';
import 'package:aurora_software_project/admin/admin_home.dart';
import 'package:aurora_software_project/admin/analytics_screen.dart';
import 'package:aurora_software_project/admin/orders_screen.dart';
import 'package:aurora_software_project/constants.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {

  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const AdminHomeScreen(),
    const AnalyticsScreen(),
    const OrdersScreen(),
    const productsScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

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
     body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // POSTS
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                     color: _page == 0
                        ? Color(0xFF9B93E1)
                        : Colors.white,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Icon(
                Icons.home_outlined,
                color: _page == 0 ? Color(0xFF9B93E1) : Colors.grey,
              ),
            ),
            label: '',
          ),
          // ANALYTICS
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? Color(0xFF9B93E1)
                        : Colors.white,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Icon(
                Icons.analytics_outlined,
                color: _page == 1 ? Color(0xFF9B93E1) : Colors.grey,
              ),
            ),
            label: '',
          ),
          // ORDERS
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: _page == 2
                        ? Color(0xFF9B93E1)
                        : Colors.white,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Icon(
                Icons.all_inbox_outlined,
                color: _page == 2 ? Color(0xFF9B93E1) : Colors.grey,
              ),
            ),
            label: '',
          ),
        /*  BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: _page == 3
                        ? Color(0xFF9B93E1)
                        : Colors.white,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: Icon(
                Icons.all_inbox_outlined,
                color: _page == 3 ? Color(0xFF9B93E1) : Colors.grey,
              ),
            ),
            label: '',
          ),*/
        ],
      ),
    );
  }
}
