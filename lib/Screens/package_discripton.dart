import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/invoice_recipt.dart';
import 'package:splashscreenday1/Screens/querypage.dart';


class PackageDiscription extends StatefulWidget {
  const PackageDiscription({Key? key}) : super(key: key);

  @override
  State<PackageDiscription> createState() => _PackageDiscriptionState();
}

class _PackageDiscriptionState extends State<PackageDiscription> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
            title: const Text(
              "Package Detail",
              textAlign: TextAlign.center,
            )),
        body: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            RichText(
                              text: TextSpan(
                                text: 'Total Cost :',

                                children: const <TextSpan>[
                                  TextSpan(text: '\$4,199', style: TextStyle(color: Colors.blue)),

                                ],
                              ),
                            ),
                            // Text(
                            //   'Total Cost :  \$4,199                                                                                                                                            ',
                            //   style: TextStyle(
                            //     fontSize: 15.0,
                            //   ),
                            // )
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
                  SizedBox(height: 10.0,),
                                    Container(
                      width: MediaQuery.of(context).size.width,
                      // height: 400,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        ),
                      ),
                      child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("White Padded, Bamboo"),
                                  Spacer(flex: 1,),
                                  Text("\$188")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Chiavari Chairs"),
                                  Spacer(flex: 1,),
                                  Text("\$120")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Round Dinner Tables"),
                                  Spacer(flex: 1,),
                                  Text("\$165")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Bride & Grooms Farmhouse Table"),
                                  Spacer(flex: 1,),
                                  Text("\$200")
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Table linens"),
                                  Spacer(flex: 1,),
                                  Text("\$115")
                                ],
                              ),
                            ),


                          ] )
                  ),

                  SizedBox(height: 5,),
                  Text('Queries',
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                  Column(
                    children:<Widget> [
                      SizedBox(height: 10,),

                      ListTile(
                        // leading: const Icon(Icons.person),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              'Where will the wedding take place, question',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Invoice()));
                          print("data");

                        },
                      ),
                      SizedBox(height: 10,),

                      ListTile(
                        //leading: const Icon(Icons.person),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              'What do you want the pastor to wear',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>query_page()));
                          print("data");

                        },
                      ),
                      SizedBox(height: 10,),

                      ListTile(
                        // leading: const Icon(Icons.person),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              'Would you like to add flowers to your package?',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: query_page(),
                                duration: Duration(milliseconds: 3000),
                                inheritTheme: true,
                                ctx: context),
                          );
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>query_page()));
                          // print("data");

                        },
                      ),

                    ],
                  ),
                ])
        ) );
  }
}
