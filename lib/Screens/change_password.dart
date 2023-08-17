import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'login.dart';

class Change_password extends StatefulWidget {
   Change_password({super.key});

  @override
  State<Change_password> createState() => _Change_passwordState();
}

class _Change_passwordState extends State<Change_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Forget Password",style: TextStyle(color: Color( 0xff005576)),),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,color: Color( 0xff005576),)),
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                    ],
                  ),
                ),
                Container(
                  //width: width,
                  //height: height*0.45,
                  child: Image.asset(
                    'assets/images/Group.png',
                    fit: BoxFit.fill,
                    height: 120,

                    width: 120,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'old password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon:Icon(Icons.visibility_off,) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  obscureText: true,

                  decoration: InputDecoration(
                    hintText: 'new password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon:Icon(Icons.visibility_off,) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextField(
                  obscureText: true,

                  decoration: InputDecoration(

                    hintText: 'confirm password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon:Icon(Icons.visibility_off,) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                // Text('Remember me',textAlign: TextAlign.start,style: TextStyle(fontSize: 12.0),),

                ElevatedButton(
                  child:  Text('Confirm'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: LoginPage(),
                          duration: Duration(milliseconds: 3000),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                ),
              ])),
    );
  }
}
