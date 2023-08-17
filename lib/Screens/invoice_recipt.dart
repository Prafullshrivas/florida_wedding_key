import 'package:flutter/material.dart';




class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            margin: EdgeInsets.all(20),
            // height: height,1
            // width: width,
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Invoice',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),

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
                                      Text("Everglades Package",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Spacer(flex: 1,),
                                      Text("26 April 2023",style: TextStyle(fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("\$4,199",style: TextStyle(fontWeight: FontWeight.bold),),
                                      // Spacer(flex: 1,),
                                      // Text("\$120")
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 1.5,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Add Ons",style: TextStyle(fontWeight: FontWeight.bold),),
                                      // Spacer(flex: 1,),
                                      // Text("\$165")
                                    ],
                                  ),
                                ),
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
                                Divider(
                                  thickness: 1.5,
                                  color: Colors.blue,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Total Cost    :",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Spacer(flex: 1,),
                                      Text("\$4,987")
                                    ],
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Deposit:",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Spacer(flex: 1,),
                                      Text("\$1987")
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Text("Remaining :",style: TextStyle(fontWeight: FontWeight.bold),),
                                      Spacer(flex: 1,),
                                      Text("\$3000")
                                    ],
                                  ),
                                ),
                              ] )
                      ),
                    ])
            )
        ) );
  }

}
