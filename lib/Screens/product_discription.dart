import 'package:flutter/material.dart';
import 'prodcut_class.dart';


class discription extends StatefulWidget {
  String image;
  String title;
  String price;
  String subtitle;
  discription(
      {Key? key,
      required this.image,
      required this.title,
      required this.price,
      required this.subtitle})
      : super(key: key);

  @override
  State<discription> createState() => _discriptionState();
}

class _discriptionState extends State<discription> {
  //const discription({super.key});
  List<productsModel> product = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: const Text("Wedding Evening Dress",style: TextStyle(color: Color( 0xff005576)),),
      leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios,color: Color( 0xff005576),)),
    ),
      body: Container(
        //Text:"Welcome to this side ",
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              widget.image,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.scaleDown ,
            ),
            Row(
              children: [
                Text(
                  "${widget.title}",
                  style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                Spacer(),
                Container(
                    height: 30,width: 70,
                    decoration: BoxDecoration(shape: BoxShape.rectangle,
                        border: Border.all(
                            color: Colors.blueAccent),
                        borderRadius: BorderRadius.all(
                            Radius.circular(3))),
                    padding:EdgeInsetsDirectional.all(2) ,
                    child: Container( height: 29,width: 69,
                      margin: EdgeInsets.all(1),
                      decoration: BoxDecoration(shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Colors.blueAccent,),
                          borderRadius:
                          BorderRadius.all(
                              Radius.circular(
                                  3))),
                      padding: EdgeInsets.only(top:2,),
                      child: Text(
                          widget.price.toString(),
                          style: TextStyle(color: Colors.blue),textAlign: TextAlign.center,
                        ),

                    )),
              ],
            ),
            SizedBox(height: 20,),
            Text("${widget.subtitle}"),

            //  Text("${widget.Price}")
          ],
        ),
      ),
    );
  }
}
