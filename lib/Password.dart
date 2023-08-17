import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

import 'package:splashscreenday1/Screens/login.dart';
class password extends StatefulWidget {
  const password({super.key});

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {
  TextEditingController passwordController1 = TextEditingController();
  TextEditingController  cnfmpasswordController = TextEditingController();
  String password1 = "";
  String cnfmpassword = "";


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Forgot Password ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                Container(
                  //width: width,
                  //height: height*0.45,
                  child: Image.asset('assets/images/Group.png', fit:BoxFit.fill,height: 120,width: 120,),
                ),
                SizedBox(height: 30.0,),
                TextField(
                  controller: passwordController1,
                  decoration: InputDecoration(
                    hintText: 'new password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height: 30.0,),
                TextField(
                  controller: cnfmpasswordController,

                  decoration: InputDecoration(
                    hintText: 'confirm password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                SizedBox(height:30.0 ,),




                ElevatedButton(

                  child: const Text('Confirm'),
                  onPressed: () {
                   //Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                   if (passwordController1.text.trim().isEmpty) {
                   Fluttertoast.showToast(msg: "Please enter password",backgroundColor: Colors.red);
                    }else if(passwordController1.text.trim()!=cnfmpasswordController.text.trim()){
                      Fluttertoast.showToast(msg: "password not matched",backgroundColor: Colors.red);
                    }else{
                     Navigator.push(
                       context,
                       PageTransition(
                           type: PageTransitionType.rightToLeft,
                           child: LoginPage(),
                           duration: Duration(milliseconds: 2000),
                           inheritTheme: true,
                           ctx: context),
                     );

                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    }
                  },

                ),
              ])
      ),);
  }
}
