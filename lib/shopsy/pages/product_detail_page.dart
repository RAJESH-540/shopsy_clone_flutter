import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/cart_page.dart';
import 'package:shopsy_clone/shopsy/pages/product_full_image.dart';
import 'package:shopsy_clone/shopsy/pages/search_page.dart';

class ProductDetailsPage extends StatefulWidget {
   final String img;
   final String price;
    final String off;
    final String cutPrice;
     final String? productName;
  const ProductDetailsPage({super.key,
    required this.img,
    required this.price,
    required this.off,
    required this.cutPrice,
     this.productName,
  });

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         // backgroundColor: Colors.deepPurpleAccent[100],
        title: Text(""),

         actions: [
           Padding(
             padding: EdgeInsets.only(right: 10),
             child: Row(
               children: [
                 InkWell(
                    onTap:(){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage()));
                    },
                   child: const Icon(Icons.search,
                     // color: Colors.white,
                   ),
                 ),
                 SizedBox(width: 5,),
                 InkWell(
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage(
                         img: widget.img,
                         price: widget.price,
                         off: widget.off,
                         cutPrice: widget.cutPrice,
                       )));
                    },
                   child: Icon(Icons.shopping_cart,
                     // color: Colors.white,
                   ),
                 ),
                 SizedBox(width: 10,),

               ],
             ),
           )
         ],
      ),
      body: SingleChildScrollView(
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
               onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductFullImagePage(
                      img: widget.img)));
               },
              child: Hero(
                tag: widget.img,
                child: Image.network(

                  widget.img,
                  height: 420,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.scaleDown,),
              ),
            ),
            const SizedBox(height: 10,),
             Container(
               padding: EdgeInsets.symmetric(horizontal: 10),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   RichText(
                     text: TextSpan(
                         children: [
                           TextSpan(
                             text: widget.cutPrice,
                             style: const TextStyle(fontSize: 25,color: Colors.grey,
                               decoration: TextDecoration.lineThrough,
                             ),),
                           const TextSpan(
                             text: "   ",),
                           TextSpan(
                             text: widget.price,
                             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
                           const TextSpan(
                             text: "   ",),
                           TextSpan(
                             text: widget.off,
                             style: TextStyle(fontSize: 20, color: Colors.greenAccent,fontWeight: FontWeight.bold),),

                         ]

                     ),


                   ),
                   const Row(
                     children: [
                       Icon(Icons.fire_truck, color: Colors.deepPurpleAccent,),
                       Text(" Free Delivery", style: TextStyle(fontSize: 12, color: Colors.deepPurpleAccent),)
                     ],
                   ),
                    Text(widget.productName??""),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.green,),
                        Icon(Icons.star, color: Colors.green,),
                        Icon(Icons.star, color: Colors.green,),
                        Icon(Icons.star, color: Colors.green,),
                      ],
                    ),
                   // const SizedBox(height: 10,),
                   Row(
                     children: [
                       Expanded(
                         flex: 1,
                         child: InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage(
                               img: widget.img,
                               price: widget.price,
                               off: widget.off,
                               cutPrice: widget.cutPrice,
                               productName: widget.productName,
                             )));
                           },
                           child: Container(
                             height: 50,
                             // width: 200,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(4),bottomLeft: Radius.circular(4), ),
                               border: Border.all(
                                 width: 1,
                                 color: Colors.deepPurpleAccent,
                               ),
                             ),
                             child: Center(child: Text("Add to cart", style: TextStyle(color: Colors.deepPurpleAccent),)),
                           ),
                         ),
                       ),
                       Expanded(
                         flex: 1,
                         child: Container(
                           height: 50,
                           // width: 200,
                           decoration: BoxDecoration(
                             // borderRadius: BorderRadius.circular(4),
                             borderRadius: BorderRadius.only(topRight: Radius.circular(4),bottomRight: Radius.circular(4), ),
                             color: Colors.deepPurpleAccent,
                             border: Border.all(
                               width: 1,
                               color: Colors.deepPurpleAccent,
                             ),
                           ),
                           child: InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage(
                                  img: widget.img,
                                  price: widget.price,
                                  off: widget.off,
                                  cutPrice: widget.cutPrice,
                                  productName: widget.productName,
                                )));
                              },
                               child: Center(child: Text("Buy now", style: TextStyle(color: Colors.white),))),
                         ),
                       ),
                     ],
                   )
                 ],
               ),
             )


          ],
        ),
      ),
    );
  }
}
