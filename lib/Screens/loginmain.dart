import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/allpackage.dart';

import 'weddingpackages.dart';

class login_main extends StatefulWidget {
  const
  login_main({Key? key}) : super(key: key);

  @override
  State<login_main> createState() => _login_mainState();
}

class _login_mainState extends State<login_main> {
  List<weddingModel> model = [];
  String name = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 52.png',
        Text: 'Everglades Package',
        discription:
            'Our Most Extravagant All InclusiveFlorida Beach Wedding Package',
        Subtitle: 'Prices Start at',
        Price: '4,199'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 54.png',
        Text: 'Alligator Reef Package',
        discription:
            'Our Most Popular All InclusiveFlorida Beach Wedding Package',
        Subtitle: 'Prices Start at',
        Price: '2,699'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 56.png',
        Text: 'Cardsound Package',
        discription:
            'Our Most Affordable All InclusiveFlorida Beach Wedding Package',
        Subtitle: 'Prices Start at',
        Price: '2,699'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 69.png',
        Text: 'Driftwood Package',
        discription:
            'Our Most Extravagant All InclusiveFlorida Beach Wedding Package',
        Subtitle: 'Prices Start at',
        Price: '1,699'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 61.png',
        Text: 'Seven Mile Package',
        discription:
            'Our Most Popular All InclusiveFlorida Beach Wedding Package',
        Subtitle: 'Prices Start at',
        Price: '1,499'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 62.png',
        Text: 'Flamingo Package',
        discription:
            'Our Most Affordable All InclusiveFlorida Beach Wedding Package',
        Subtitle: 'Prices Start at',
        Price: '1,299'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 66.png',
        Text: 'Palm Package',
        discription: 'Our Elopement Beach Wedding Package',
        Subtitle: 'Prices Start at',
        Price: '1,599'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 67.png',
        Text: 'Hightide Package',
        discription: 'Our Elopement BeachWedding Package',
        Subtitle: 'Prices Start at',
        Price: '999'));
    model.add(new weddingModel(
        image: 'assets/images/Rectangle 68.png',
        Text: 'Mangrove Package',
        discription: 'Our Elopement BeachWedding Package',
        Subtitle: 'Prices Start at',
        Price: '699'));
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.only(top: 50,),
          child: Container(
              child: SingleChildScrollView(
                  child: Column(children: [
      Row(children: [
          CircleAvatar(
            backgroundColor: Colors.white70,
            minRadius: 50.0,
            child: CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('assets/images/Aa.png'),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              'Welcome jennifer ',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ]),
      SizedBox(
          height: 20,
      ),
      Column(children:  [
          CarouselSlider(
            items: [
              //1st Image of Slider
              SizedBox(
                width: 20,
              ),
              Container(
                height: 400.0,
                width: 600.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/couple.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
              //2nd Image of Slider
              Container(
                height: 400.0,
                width: 600.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/couple.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),

              // //3rd Image of Slider
              Container(
                height: 400.0,
                width: 600.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/couple.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),

              // //4th Image of Slider
              Container(
                height: 400.0,
                width: 600.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/couple.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              height: 200.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 10),
              viewportFraction: 0.9,
            ),
          ),
      ]),
      SizedBox(
          height: 10,
      ),
      ListView.builder(
            physics: const NeverScrollableScrollPhysics(),

            shrinkWrap: true,
            itemCount: 3,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                         Padding(padding: EdgeInsets.only(top: 30,bottom: 30,)),

                        GestureDetector(
                          child: new Text(
                            "Ceremony Wedding Packages",
                            style: new TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ),
                        ),
                        Spacer(flex: 1,),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                                textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),

                            child: const Text(
                              'View All',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: All_Packages(),
                                    duration: Duration(milliseconds: 1000),
                                    inheritTheme: true,
                                    ctx: context),
                              );
                            }),
                        //text
                        //button
                      ],
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: model.length,
                          scrollDirection: Axis.horizontal,
                          physics: AlwaysScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int subIndex) {
                            return Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: 200.0,
                                    child: Card(
                                      child: Column(
                                        children: [
                                          Image.asset(
                                            model[subIndex].image.toString(),
                                            height: 120,
                                            width: 200,
                                            fit: BoxFit.fill,
                                          ),
                                          Text(model[subIndex].Text.toString(),
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  color: Colors.red)),
                                          Text(model[subIndex].discription,
                                              textAlign: TextAlign.center),
                                          Text(model[subIndex].Subtitle,
                                              style: TextStyle(
                                                  fontSize: 15.0,
                                                  fontWeight: FontWeight.bold)),
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
                                                    "\$${model[subIndex].Price}",
                                                    style: TextStyle(
                                                        color: Colors.red,),textAlign: TextAlign.center,
                                                  ))),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              );
            }),
    ]))),
        ),
    );
  }
}
