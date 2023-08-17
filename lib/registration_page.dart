import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:splashscreenday1/Screens/login.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';


class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  // checkbox parameter//
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }
  //--------------

  bool isChecked1 = false;
  Color getColor1(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }
//controllers for passing validation conditon//
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cnfmpasswordController = TextEditingController();

  // final emailController = TextEditingController();
  // final passController = TextEditingController();
  String name = "";
  String email = "";
  String password = "";
  String number = "";
  String cnfmpassword = "";

  bool passwordVisible = true;
  bool passwordVisible1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                    height: 120,
                    width: 300,
                    child: Image.asset(
                      'assets/images/title.png',
                      fit: BoxFit.fill,
                    )),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'enter name',
                      icon: Icon(
                        Icons.account_circle_outlined,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter mail Address',
                    icon: Icon(
                      Icons.mail,
                      size: 40,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: TextField(
                    controller: numberController,
                    maxLength: 10,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      // for below version 2 use this
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
// for version 2 and greater youcan also use this
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "mobile number",
                        hintText: "mobile number",
                        icon: Icon(
                          Icons.phone_iphone,
                          size: 40,
                        ))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: TextField(
                  controller: passwordController,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    icon: Icon(
                      Icons.mail_lock,
                      size: 40,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        if (passwordVisible == true) {
                          passwordVisible = false;
                          setState(() {});
                        } else {
                          passwordVisible = true;
                          setState(() {});
                        }
                      },
                      child: Icon(passwordVisible != false
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                child: TextField(
                  controller: cnfmpasswordController,
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "confirm password",
                    icon: Icon(
                      Icons.lock_clock_rounded,
                      size: 40,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        if (passwordVisible1 == true) {
                          passwordVisible1 = false;
                          setState(() {});
                        } else {
                          passwordVisible1 = true;
                          setState(() {});
                        }
                      },
                      child: Icon(passwordVisible1 != false
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember me',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ]),
              ),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked1,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked1 = value!;
                      });
                    },
                  ),
                  Text(
                    'I have read all term and condition',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ]),
              ),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text('SignUp'),
                  onPressed: () {
                    if (nameController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please enter NAME.", backgroundColor: Colors.red);
                    } else if (nameController.text == false) {
                      Fluttertoast.showToast(
                          msg: "this feild is required.",
                          backgroundColor: Colors.red);
                    } else if ((!RegExp(r'\S+@\S+\.\S+')
                        .hasMatch(emailController.text.toString()))) {
                      Fluttertoast.showToast(
                          msg: "please enter correct mailid",
                          backgroundColor: Colors.red);
                    } else if (numberController.text.trim().isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please enter Valid number",
                          backgroundColor: Colors.red);
                    } else if (passwordController.toString().isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please enter password",
                          backgroundColor: Colors.red);
                    } else if (passwordController.toString().length < 6) {
                      Fluttertoast.showToast(
                          msg: "Please enter password",
                          backgroundColor: Colors.red);
                    } else if (cnfmpasswordController.text.trim() !=
                        passwordController.text.trim()) {
                      Fluttertoast.showToast(
                          msg:
                          "Password not matched please enter correct password.",
                          backgroundColor: Colors.red);
                    } else {
                      if (isChecked1 == true && isChecked == true) {

                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: LoginPage(),
                              duration: Duration(milliseconds: 2000),
                              inheritTheme: true,
                              ctx: context),
                        );
                      } else {
                        Fluttertoast.showToast(
                            msg: "you must click both the boxes",
                            backgroundColor: Colors.red);
                      }
                    }

                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

