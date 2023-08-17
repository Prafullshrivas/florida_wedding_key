import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/querypage.dart';

import 'invoice_recipt.dart';
class Detailed_query extends StatefulWidget {
  const Detailed_query({Key? key}) : super(key: key);

  @override
  State<Detailed_query> createState() => _Detailed_queryState();
}

class _Detailed_queryState extends State<Detailed_query> {
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
                    height: 5,
                  ),
                  const Text(
                    'Add Ons',
                    style: TextStyle(fontSize: 20.0, color: Colors.black87),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5,),

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
                      SizedBox(height: 5,),

                      ListTile(
                        // leading: const Icon(Icons.person),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              'Where will the wedding take place, question',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>query_page()));
                          // print("data");

                        },
                      ),
                      const Text(
                        'Lorem Ipsum is simply dummy text of the printing and \ntypesetting industry. Lorem Ipsum has been the industry \n standard dummy text ever since the 1500s',
                        style: TextStyle(fontSize: 9.0),
                      ),
                      SizedBox(height: 5,),

                      ListTile(
                        //leading: const Icon(Icons.person),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              'What do you want the pastor to wear',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>query_page()));
                          // print("data");

                        },
                      ),
                      SizedBox(height: 5,),

                      ListTile(
                        // leading: const Icon(Icons.person),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            const Text(
                              'Would you like to add flowers to your package?',
                              style: TextStyle(fontSize: 12.0),
                            ),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>query_page()));
                          // print("data");

                        },
                      ),
                      ElevatedButton(
                        child: Text('Invoice'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rotate,alignment: Alignment.bottomLeft,
                                child: Invoice(),
                                duration: Duration(milliseconds: 4000),
                                inheritTheme: true,
                                ctx: context),
                          );
                          //Navigator.push(context, MaterialPageRoute(builder: (context)=>Invoice()));

                        },
                      ),
                    ],
                  ),
                ])
        ) );
  }
}
