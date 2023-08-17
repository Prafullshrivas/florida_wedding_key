import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreenday1/Screens/login.dart';

import 'Screens/bottombarwithtabbar.dart';
import 'Screens/loginmain.dart';
import 'Screens/products.dart';
import 'Screens/profilepage.dart';
import 'Screens/splash_screen.dart';
import 'Screens/tabbar.dart';
//import 'package:splashscreen/splashscreen.d
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',

      home: splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}