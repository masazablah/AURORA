import 'package:aurora_software_project/admin/add_hair_screen.dart';
import 'package:aurora_software_project/admin/add_makeup_screen.dart';
import 'package:aurora_software_project/admin/add_skin_screen.dart';
import 'package:aurora_software_project/admin/add_tools_screen.dart';
import 'package:aurora_software_project/admin/admin_screen.dart';
import 'package:flutter/material.dart';
import 'package:scaled_list/scaled_list.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
 
 final Map<String, Widget> categoryPages = {
  'Makeup': AddMakeupScreen(),
  'Skin Care': AddSkinScreen(),
  'Hair Care': AddhairScreen(),
  'Beauty Tools': AddToolsScreen(),
};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaledList(
          itemCount: categories.length,
          itemColor: (index) {
            return kMixedColors[index % kMixedColors.length];
          },
          itemBuilder: (index, selectedIndex) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
  final nextPage = categoryPages[category.name];
  if (nextPage != null) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
},

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: selectedIndex == index ? 150 : 150,
                    child: Image.asset(category.image),
                  ),
                  SizedBox(height: 15),
                  Text(
                    category.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: selectedIndex == index ? 25 : 20),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  final List<Color> kMixedColors = [
    Color.fromARGB(255, 240, 189, 208),
    Color.fromARGB(255, 209, 181, 233),
    Color(0xffF8B993),
    Color.fromARGB(255, 228, 120, 152),

    //Color(0xffF8B993),
  ];

  final List<Category> categories = [
    Category(image: "assets/images/makeupc.png", name: "Makeup"),
    Category(image: "assets/images/skincarec.png", name: "Skin Care"),
    Category(image: "assets/images/haircarec.png", name: "Hair Care"),
    Category(image: "assets/images/beautytoolsc.png", name: "Beauty Tools"),
  ];
}

class Category {
  final String image;
  final String name;

  Category({required this.image, required this.name});
}
