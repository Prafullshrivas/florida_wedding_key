import 'package:flutter/material.dart';
import 'package:splashscreenday1/Screens/allpackage.dart';
import 'package:splashscreenday1/Screens/products.dart';


import 'loginmain.dart';
import 'mypackage.dart';
import 'profilepage.dart';

class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  int _selectedIndex = 0;

  static  List<Widget> _widgetOptions = <Widget>[
    login_main(),
    mypackage(),
    Products(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blueAccent),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt, color: Colors.blueAccent),
            label: 'AllPackage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart, color: Colors.blueAccent),
            label: 'product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.blueAccent),
            label: 'profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
