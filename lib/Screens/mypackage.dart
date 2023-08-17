import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/package_detail.dart';

class mypackage extends StatefulWidget {
  const mypackage({Key? key}) : super(key: key);

  @override
  State<mypackage> createState() => _mypackageState();
}

class _mypackageState extends State<mypackage> {
  List<Map<String, String>> images = [
    {
      'image': 'assets/images/Rectangle 52.png',
      'Text': 'Everglades Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'Name': 'Add On'
    },
    {
      'image': 'assets/images/Rectangle 69.png',
      'Text': 'Alligator Reef Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'Name': 'Add On'
    },
    {
      'image': 'assets/images/Rectangle 56.png',
      'Text': 'Cardsound Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'Name': 'Add On'
    },
    {
      'image': 'assets/images/Rectangle 58.png',
      'Text': 'Driftwood Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'Name': 'Add On'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "MY PACKAGE",
        textAlign: TextAlign.center,
      )),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset(
                    images[index]['image'].toString(),
                    height: 52,
                    width: 98,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: 30,height: 30,),


                  Expanded(
                    child: Column( crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          images[index]['Text'].toString(),
                          style:
                              new TextStyle(color: Colors.blue, fontSize: 15.0),
                        ),
                        Text(
                          images[index]['discription'].toString(),
                          style:
                              new TextStyle(color: Colors.black, fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30,height: 30,),

                  Expanded(
                      child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: pacakagedetails(),
                                duration: Duration(milliseconds: 1000),
                                inheritTheme: true,
                                ctx: context),
                          );
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => pacakagedetails()));
                        },
                        child:  Container(
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
                                images[index]['Name'].toString(),
                                style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,
                              )),
                        ),
                      ),
                    ],
                  )),


                ],
              ),
            );
          }),
    );
  }
}
