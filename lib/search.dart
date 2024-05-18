import 'package:aurora_software_project/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchP extends StatefulWidget {
  const SearchP({super.key});

  @override
  State<SearchP> createState() => _SearchPState();
}

class _SearchPState extends State<SearchP> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border:
            Border.all(width: 1, color: myColor), // Add black border
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 55,
        width: 380,
        decoration: BoxDecoration(
          // color: Color(0xFFDFDED9),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              iconSize: 30,
              icon: const Icon(
                Icons.search,
                color: Color(0xFF716ABB),
              ),
            ),
            const SizedBox(width: 10),
            const Flexible(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search ...",
                  hintStyle: TextStyle(color: Color(0xFF716ABB)),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 25,
              width: 1.5,
              color: Color(0xFF716ABB),
            ),
            const SizedBox(width: 15),
            /* MaterialButton(
              onPressed: () {
                _display(context);
              },
              child: Text('Sort'), // Add text or any other child widget
              color: Colors.white, // Set background color
              textColor: kourcolor1, // Set text color
              padding: EdgeInsets.symmetric(
                  vertical: 12, horizontal: 24), // Set padding
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // Set border radius
                side: BorderSide(
                    color: Colors.white), // Set border color and width
              ),
            ), */
            GestureDetector(
              onTap: () {
                _display(context);
              },
              child: Container(
                child: Text('Sort    ',
                    style: TextStyle(
                      color: myColor,
                      fontSize: 15,
                      // fontWeight: FontWeight.bold,
                    )),
                /*  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 1, color: kourcolor1))), */
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _display(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                 
                  borderRadius: BorderRadius.circular(10.0),
                 color: Colors.white,
                ),
                height: 300,
                width: 450,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text('SORT BY',
                          style: TextStyle(
                            color: Color.fromARGB(255, 56, 55, 55),
                            fontSize: 20,
                            
                          )),
                    ),
                    //  Divider(),
                    SizedBox(
                      height: 10,
                    ),
                   Container(
                      height: 0.2,
                      width: 500,
                       color: Color.fromARGB(255, 180, 179, 184),
                    ),
                    Container(
                      child: ListTile(
                        title: Text(
                          'Lowest Price',
                          style: TextStyle(
                          color: Color.fromARGB(255, 103, 102, 109),
                            
                          ),
                        ),
                        onTap: () {
                          // Handle item 1 tap
                          Navigator.pop(
                              context); // Close the bottom sheet if needed
                        },
                      ),
                    ),
                   Container(
                      height: 0.2,
                      width: 380,
                       color: Color.fromARGB(255, 180, 179, 184),
                    ),

                    //Divider(),
                    Container(
                      child: ListTile(
                        title: Text(
                          'Higher Price',
                          style: TextStyle(
                          color: Color.fromARGB(255, 103, 102, 109),
                            
                          ),
                        ),
                        onTap: () {
                          // Handle item 2 tap
                          Navigator.pop(
                              context); // Close the bottom sheet if needed
                        },
                      ),
                    ),
                    Container(
                      height: 0.2,
                      width: 380,
                       color: Color.fromARGB(255, 180, 179, 184),
                    ),

                    Container(
                      child: ListTile(
                        title: Text(
                          'Brand Name',
                          style: TextStyle(
                          color: Color.fromARGB(255, 103, 102, 109),
                            
                          ),
                        ),
                        onTap: () {
                          // Handle item 2 tap
                          Navigator.pop(
                              context); // Close the bottom sheet if needed
                        },
                      ),
                    ),

                    //Divider(),
                    Container(
                      height: 0.2,
                      width: 380,
                       color: Color.fromARGB(255, 180, 179, 184),
                    ),

                     Container(
                      child: ListTile(
                        title: Text(
                          'Best Selling',
                          style: TextStyle(
                          color: Color.fromARGB(255, 103, 102, 109),
                            
                          ),
                        ),
                        onTap: () {
                          // Handle item 2 tap
                          Navigator.pop(
                              context); // Close the bottom sheet if needed
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}