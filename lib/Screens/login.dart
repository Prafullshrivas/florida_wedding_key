import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/navigations.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import '../forgetpassword_screen.dart';
import '../registration_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // final emailController = TextEditingController();
  // final passController = TextEditingController();
  String email = "awesome@gmail.com";
  String password = "123456";

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

  bool passwordVisible = true;


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
                      'Login in to your Account',
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
                  'assets/images/title.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
               controller: nameController,
                decoration:
                    InputDecoration(hintText: "enter your email",
                        focusColor: Colors.white,
                          //add prefix icon
                       prefixIcon: Icon(
                            Icons.person_outline_rounded,
                            color: Colors.grey,
                          ),
                        labelText: "Email"),


               // keyboardType: TextInputType.emailAddress,
              ),
              new TextFormField(
                controller: passwordController,

                decoration:
                    InputDecoration(hintText: "Password",
                        prefixIcon: Icon(Icons.lock_open_outlined, color: Colors.grey,),
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
                      ) ,
                        labelText: "Password"),
                obscureText: passwordVisible,

              ),


              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
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
                    Spacer(),
                    ElevatedButton(
                      child:Text(
                        'Forget password?',
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: ForgetPasword(),
                              duration: Duration(milliseconds: 1000),
                              inheritTheme: true,
                              ctx: context),
                        );
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ForgetPasword()));
                      },
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    textStyle: TextStyle(color:Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                child: const Text('login'),
                onPressed: () {
                  if (nameController.text.trim().isEmpty) {
                    Fluttertoast.showToast(msg: "Please enter mail id.",backgroundColor: Colors.red);
                   }
                  else if (nameController.text.trim() != email) {
                    Fluttertoast.showToast(
                        msg:
                            "Email id not same please enter a correct email id.",backgroundColor: Colors.red);
                  } else if (passwordController.text.trim().isEmpty) {
                    Fluttertoast.showToast(msg: "Please enter password",backgroundColor: Colors.red);
                  }



                     else if (passwordController.text.trim() != password) {
                    Fluttertoast.showToast(
                        msg: "Password not matched please enter correct password.",backgroundColor: Colors.red);
                  } else if ((passwordController.text.length < 6)) {
                    Fluttertoast.showToast(
                        msg: "Enter a password with length at least 6.",backgroundColor: Colors.red);
                  } else {
                    Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: Navigations(),
                          duration: Duration(milliseconds: 1000),
                          inheritTheme: true,
                          ctx: context),
                    );
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Navigations()));

                  }
                },
              ),
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => Navigations()));

              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: Registration(),
                        duration: Duration(milliseconds: 1000),
                        inheritTheme: true,
                        ctx: context),
                  );
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Registration()));
                },
                child: Text.rich(
                  TextSpan(text: 'Already have an account', children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(color: Color(0xffEE7B23)),
                    ),
                  ]),
                ),
              ),
            ],
          ),
      ),
    ),
        ));
  }
}
