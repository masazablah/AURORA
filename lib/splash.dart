import 'package:aurora_software_project/admin/admin_screen.dart';
import 'package:aurora_software_project/home_screen.dart';
import 'package:aurora_software_project/main.dart';
import 'package:flutter/material.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _StarupViewState();
}

class _StarupViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
      await Future.delayed( const Duration(seconds: 5) );
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminScreen()));
      //welcomePage();
  }

  

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/images/welcome.jpeg",
            width: media.width,
            height: media.height,
            fit: BoxFit.cover,
          ),
          
        ],
      ),
    );
  }
}