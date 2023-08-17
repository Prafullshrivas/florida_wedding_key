import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:splashscreenday1/Screens/loginmain.dart';

import 'login.dart';
import 'navigations.dart';
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder:(context)=>LoginPage(),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 300),
        child: Container(
    padding: EdgeInsets.only(left: 25,right: 25,),
              color: Colors.white,
           child: Image.asset('assets/images/title.png'),
    ),
      ),
    );
  }
}
