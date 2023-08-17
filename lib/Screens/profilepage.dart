import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'package:splashscreenday1/Screens/login.dart';

import 'change_password.dart';
import 'change_profile.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("profile"),
      ),
      body:
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("assets/images/Aa.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text('jennifer mathew',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("Profile"),
                leading: Icon(CupertinoIcons.person),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Change_Profile(),
                        duration: Duration(milliseconds: 1000),
                        inheritTheme: true,
                        ctx: context),
                  );
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const Change_Profile()));
                },
                tileColor: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("Change Password"),
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Change_password(),
                        duration: Duration(milliseconds: 1000),
                        inheritTheme: true,
                        ctx: context),
                  );
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Change_password()));
                },
                leading: Icon(CupertinoIcons.lock_fill),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                tileColor: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("Privacy Policy"),
                leading: Icon(CupertinoIcons.shield_lefthalf_fill),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                tileColor: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("Terms&Condition"),
                leading: Icon(CupertinoIcons.checkmark_shield_fill),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                tileColor: Colors.white,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.white10.withOpacity(.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                    )
                  ]),
              child: ListTile(
                title: Text("LOGOUT"),
                leading: Icon(CupertinoIcons.arrow_left_to_line_alt),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                ),
                onTap: () {

                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: LoginPage(),
                        duration: Duration(milliseconds: 1000),
                        inheritTheme: true,
                        ctx: context),
                  );

                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LoginPage()));
                },
                tileColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
