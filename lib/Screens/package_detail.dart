import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/querypage.dart';

import 'package_discripton.dart';
import 'invoice_recipt.dart';
import 'mypackage.dart';

class pacakagedetails extends StatefulWidget {
  const pacakagedetails({Key? key}) : super(key: key);

  @override
  State<pacakagedetails> createState() => _pacakagedetailsState();
}

class _pacakagedetailsState extends State<pacakagedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          "Package Detail",
          textAlign: TextAlign.center,
        )),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Rectangle 52.png',
                    height: 97,
                    width: 137,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Everglades Package',
                          style: TextStyle(fontSize: 15.0, color: Colors.blue),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          'Our Most Extravagant All Inclusive Florida Beach\nWedding Package',
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        Text(
                          'Total Cost :  \$4,199                                                                                                                                            ',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Add Ons',
                style: TextStyle(fontSize: 20.0, color: Colors.black87),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                //MediaQuery.of(context).size.width
                width: 500,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "No Add Ons Available",
                      style: TextStyle(),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: PackageDiscription(),
                              duration: Duration(milliseconds: 1000),
                              inheritTheme: true,
                              ctx: context),
                        );

                        //Navigator.push(context, MaterialPageRoute(builder: (context) => PackageDiscription()));
                      },
                      child: Container(
                        height: 30,width: 70,
                        decoration: BoxDecoration(shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.black),
                            borderRadius: BorderRadius.all(
                                Radius.circular(3))),
                        padding:EdgeInsetsDirectional.all(2) ,
                        child: Container( height: 29,width: 69,
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(shape: BoxShape.rectangle,
                                border: Border.all(
                                    color: Colors.black),
                                borderRadius:
                                BorderRadius.all(
                                    Radius.circular(
                                        3))),
                            padding: EdgeInsets.only(top:2,),

                            child: Text(
                              "Add",
                              style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,
                            )),
                      ),
                    ),
                    //Button
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              const Text(
                'Queries',
                style: TextStyle(fontSize: 20.0, color: Colors.black87),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                //MediaQuery.of(context).size.width
                width: 500,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "No Queries Available",
                      style: TextStyle(),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: query_page(),
                              duration: Duration(milliseconds: 1000),
                              inheritTheme: true,
                              ctx: context),
                        );
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => query_page()));
                      },
                      child:Container(
                        height: 30,width: 70,
                        decoration: BoxDecoration(shape: BoxShape.rectangle,
                            border: Border.all(
                                color: Colors.black),
                            borderRadius: BorderRadius.all(
                                Radius.circular(3))),
                        padding:EdgeInsetsDirectional.all(2) ,
                        child: Container( height: 29,width: 69,
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(shape: BoxShape.rectangle,
                                border: Border.all(
                                    color: Colors.black),
                                borderRadius:
                                BorderRadius.all(
                                    Radius.circular(
                                        3))),
                            padding: EdgeInsets.only(top:2,),
                            child: Text(
                              "Add",
                              style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,
                            )),
                      ),
                    ),
                    //Button
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
