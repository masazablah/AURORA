import 'package:aurora_software_project/SignUp.dart';
import 'package:aurora_software_project/TopBar.dart';
import 'package:aurora_software_project/cart.dart';
import 'package:aurora_software_project/constants.dart';
import 'package:aurora_software_project/makeupScreen.dart';
import 'package:aurora_software_project/shopNow.dart';
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MyTopBar(),
    );
  }
}
