import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:splashscreenday1/Screens/queries2.dart';

import 'package_discripton.dart';

class query_page extends StatefulWidget {
  const query_page({super.key});

  @override
  State<query_page> createState() => _query_pageState();
}

class _query_pageState extends State<query_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Query",
        textAlign: TextAlign.center,
      )),
      body: Container(
          // height: height,1
          // width: width,
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Query',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

            ),
            Container(alignment: Alignment.topLeft,

              child: Text("Do you want to add on something ?")
            ),
            TextField(maxLines: 5,
              decoration: InputDecoration(
                hintText: '',

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rotate,alignment: Alignment.bottomLeft,
                        child: Detailed_query(),
                        duration: Duration(milliseconds: 1000),
                        inheritTheme: true,
                        ctx: context),
                  );

                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Detailed_query()));
                },
              ),
            ),

          ],


        ),



      )
      ),

    );
  }
}
