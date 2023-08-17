import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/email%20verification.dart';

class ForgetPasword extends StatefulWidget {
  const ForgetPasword({super.key});

  @override
  State<ForgetPasword> createState() => _ForgetPaswordState();
}

class _ForgetPaswordState extends State<ForgetPasword> {

  TextEditingController nameController = TextEditingController();
  String email = "awesome@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Container(
            // height: height,1
            // width: width,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot Password ',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                //width: width,
                //height: height*0.45,
                child: Image.asset(
                  'assets/images/image_2023_06_23T09_11_20_235Z.png',
                  fit: BoxFit.fill,
                  height: 120,
                  width: 120,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: nameController,

                decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),

              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (nameController.text.trim().isEmpty) {
                    Fluttertoast.showToast(msg: "Please enter mail id.",backgroundColor: Colors.red);
                  }
                  else if (nameController.text.trim() != email) {
                    Fluttertoast.showToast(
                        msg:
                        "Email id not same please enter a correct email id.",backgroundColor: Colors.red);
                  }else {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Emailverification(),
                          duration: Duration(milliseconds: 1000),
                          inheritTheme: true,
                          ctx: context),
                    );

                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Emailverification()));

                  }

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Emailverification()));
                },
              ),
            ]))),
      ),
    );

  }
}
