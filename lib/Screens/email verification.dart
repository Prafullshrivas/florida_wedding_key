import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Password.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'change_password.dart';

class Emailverification extends StatefulWidget {
  const Emailverification({super.key});

  @override
  State<Emailverification> createState() => _EmailverificationState();
}

class _EmailverificationState extends State<Emailverification> {
  TextEditingController otpController = TextEditingController();
  String otp = '';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
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
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  //width: width,
                  //height45,
                  child: Image.asset(
                    'assets/images/image_2023_06_23T09_11_05_898Z.png',
                    fit: BoxFit.fill,
                    height: 120,
                    width: 120,
                  ),

                ),
                Container(
                  child: Text("Enter code send to your registered email address ",style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                OtpTextField(
                  numberOfFields: 6,
                  borderColor: Color(12),
                  focusedBorderColor: Color(12),
                  styles: List.filled(6, null),
                  showFieldAsBox: false,
                  borderWidth: 4.0,
                   //runs when a code is typed in
                  onCodeChanged: (String code) {


                    //handle validation or checks here if necessary
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {},
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(child:  ElevatedButton(
                  child: const Text('Verify'),
                  onPressed: () {
                    if(otp.isEmpty){
                      Fluttertoast.showToast(msg: "Please enter Valid OTP",backgroundColor: Colors.red);
                    } else if(otp.length<5){
                      Fluttertoast.showToast(msg: "Please enter Valid OTP",backgroundColor: Colors.red);
                    } else(otp){
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: password(),
                            duration: Duration(milliseconds: 2000),
                            inheritTheme: true,
                            ctx: context),
                      );
                    };



                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => password()));
                  },
                ),)


                //  ElevatedButton(
                //   child: const Text('Verify'),
                //   onPressed: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => password()));
                //   },
                // ),
              ]
            ),
        ),
        ),
      ));
  }
}
