import 'package:flutter/material.dart';

class All_Packages extends StatefulWidget {
  const All_Packages({super.key});

  @override
  State<All_Packages> createState() => _All_PackagesState();
}

class _All_PackagesState extends State<All_Packages> {
  List<Map<String, String>> images = [
    {
      'image': "assets/images/Rectangle 52.png",
      'Text': 'Everglades Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$2599'
    },
    {
      'image': 'assets/images/Rectangle 69.png',
      'Text': 'Alligator Reef Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$3599',
    },
    {
      'image': 'assets/images/Rectangle 56.png',
      'Text': 'Cardsound Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$2599',
    },
    {
      'image': 'assets/images/Rectangle 58.png',
      'Text': 'Driftwood Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$1599',
    },
    {
      'image': 'assets/images/Rectangle 60.png',
      'Text': 'Seven Mile Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$2299',
    },
    {
      'image': 'assets/images/Rectangle 62.png',
      'Text': 'Flamingo Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$3200',
    },
    {
      'image': 'assets/images/Rectangle 64.png',
      'Text': 'Palm Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$2699',
    },
    {
      'image': 'assets/images/Rectangle 66.png',
      'Text': 'Hightide Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$1599',
    },
    {
      'image': 'assets/images/Rectangle 68.png',
      'Text': 'Mangrove Package',
      'discription':
          'Our Most Extravagant All Inclusive\nFlorida Beach Wedding Package',
      'subtitle': 'start at',
      'name': '\$3299',
    },
  ];
  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
      appBar: AppBar(
          title: const Text("All Packages", textAlign: TextAlign.center,)),

      body:
      ListView.builder(
          shrinkWrap: true,
          itemCount: images.length,
          scrollDirection: Axis.vertical,
          physics: AlwaysScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset(
                    images[index]['image'].toString(),
                    height: 52,
                    width: 95,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    height: 30,
                  width: 30,),
                  Expanded(
                    child: Column( crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(images[index]['Text'].toString(),
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0)),
                        Text(images[index]['discription'].toString(),maxLines: 2,),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30, width: 30,),
                  Expanded(
                      child: Column(
                    children: [
                      Text(images[index]['subtitle'].toString(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
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
                                images[index]['name'].toString(),
                                style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,
                              ))),
                    ],
                  )),
                ],
              ),
            );
          }),
    );
  }
}
