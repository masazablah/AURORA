import 'package:aurora_software_project/SignUp.dart';
import 'package:aurora_software_project/admin/admin_screen.dart';
import 'package:aurora_software_project/constants.dart';
import 'package:aurora_software_project/home_screen.dart';
import 'package:aurora_software_project/loginPage.dart';
import 'package:aurora_software_project/splash.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AURORA',
      theme: ThemeData(
        scaffoldBackgroundColor: mBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        
      ),
      home: SplashView(),
    );
  }
  
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  double getSmallDi(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDi(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 240, 253, 1),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xffE7DAF3),
                Color.fromRGBO(189, 193, 223, 1),
              ]),
            ),
          ),
          Positioned(
              top: 200,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("assets/images/Aurora-logo.png"),
                        //  fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 100),
                      ElevatedButton(
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(250, 60), // Adjust button size
                          backgroundColor:  const Color(0xffE7DAF3),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,

                              //fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> signupPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(250, 60),
                          backgroundColor:
                              const Color.fromARGB(255, 164, 144, 172), // Adjust button size
                        ),
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
  color: Colors.white,
                              //fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

