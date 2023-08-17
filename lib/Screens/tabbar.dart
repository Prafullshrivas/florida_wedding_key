import 'package:flutter/material.dart';

import 'loginmain.dart';
import 'mypackage.dart';
import 'products.dart';
import 'profilepage.dart';
class tabNavigattion extends StatefulWidget {
  const tabNavigattion({super.key});

  @override
  State<tabNavigattion> createState() => _tabNavigattionState();
}

class _tabNavigattionState extends State<tabNavigattion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        initialIndex: 1,
        length:4 ,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab( icon: Icon(Icons.home),),
                  Tab( icon: Icon(Icons.list_alt),),
                  Tab( icon: Icon(Icons.add_shopping_cart),),
                  Tab( icon: Icon(Icons.account_circle_outlined),)
                ],
              ),
            ),
            body: TabBarView(
              children: [
                login_main(),
                mypackage(),
                Products(),
                ProfileScreen()
              ],
            ),

          ),
        ),
      ),
    );
  }
}
