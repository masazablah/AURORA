import 'package:aurora_software_project/BottomBar.dart';
import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  final String username;
  const profilePage({Key? key, required this.username}) : super(key: key);

  static const String id = "profilePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: const BottomNavBar(
        initialIndex: 2,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 20.0), // Adjust the padding as needed
          child: Text(
            'My Account',
            style: TextStyle(
                fontSize: 20.0, color: Color(0xFF9B93E1) // Example font size
                ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout_outlined,
              color: Color(0xFF9B93E1),
            ),
            // Handle logout  button press
            onPressed: () async {
              // Add logout logic here
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Hi, $username',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 136, 133, 133),
              ),
            ),
          ),
          _buildSection('My Orders', Icons.shopping_cart),
          _buildSection('My Favorites', Icons.favorite),
        ],
      ), //hi+ getuserName
    );
  }

  Widget _buildSection(String title,IconData icon) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon,
        
        color: Color.fromARGB(255, 59, 59, 63),),
        title: Text(title),
        onTap: () {
          // Navigate to the respective page
        },
      ),
    );
  }
}
