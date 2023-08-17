import 'package:flutter/material.dart';
import 'package:splashscreenday1/Screens/product_discription.dart';

import 'prodcut_class.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<productsModel> product = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    product.add(new productsModel(
      image: "assets/images/Rectangle 52 (1).png",
      title: "Wedding Evening Dress",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 63.png",
      title: "Lebanese Mermaid Wedding Dress",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 56 (1).png",
      title: "Black Suit For Men",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 60 (1).png",
      title: "Reiss Menswear Suit",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 62 (3).png",
      title: "Lebanese Mermaid Wedding Dress",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 58 (2).png",
      title: "Wedding Evening Dress",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 62 (3).png",
      title: "Wedding Evening Dress",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 52 (1).png",
      title: "Wedding Evening Dress",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));
    product.add(new productsModel(
      image: "assets/images/Rectangle 52 (1).png",
      title: "Wedding Evening Dress",
      subtitle: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of",
      startat:"" ,
      price: "\$150",
    ));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRODUCTS"),
      ),
      body: GridView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          itemCount: product.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 3.0,
              childAspectRatio: 0.8),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 180,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => discription(
                            image: product[index].image,
                            title: product[index].title,
                            price: product[index].price,
                            subtitle: product[index].subtitle,
                          )));
                },
                child: Card(

                    child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [

                    Image.asset(
                      product[index].image,
                      fit: BoxFit.fill,
                      height: 500,
                    ),
                    Container(
                      height: 120,
                      width: 400,
                      child: Container(
                        height: 120,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(  color: Colors.white,width: 400,
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(product[index].title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blue,
                                        ),
                                        maxLines: 1),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    child: Text(
                                      product[index].subtitle,
                                      style: TextStyle(fontSize: 10),
                                      maxLines: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(4),
                                    // child:  Text(product[index].price.toString(),),
                                  ),


                                  Padding(
                                    padding: const EdgeInsets.only(left:2),
                                    child: Container(
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
                                            product[index].price.toString(),textAlign: TextAlign.center,style: TextStyle(color: Colors.blue),
                                          ),
                                          //  child: Text("\$1199",style: TextStyle(color: Colors.black),textAlign: TextAlign.center,)
                                        )),
                                  ),
                                ],
                              )),
                            ]),
                      ),
                    )
                  ],
                )),
              ),
            );
          }),



    );
  }
}
