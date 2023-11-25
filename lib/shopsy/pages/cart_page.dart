import 'package:flutter/material.dart';

import '../componets/dropdownmenu.dart';

class CartPage extends StatefulWidget {
   final String img;
   final String price;
   final String off;
    final String cutPrice;
     final String? productName;

  const CartPage({super.key,
    required this.img,
    required this.price,
    required this.off,
    required this.cutPrice,
    this.productName,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),

      ),
      body: Column(
        children: [
          Card(
             color: Colors.white,
           elevation: 0,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(4)
           ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.productName??""),
                          const Row(
                            children: [
                              Icon(Icons.star, color: Colors.green,),
                              Icon(Icons.star, color: Colors.green,),
                              Icon(Icons.star, color: Colors.green,),
                              Icon(Icons.star, color: Colors.green,),
                            ],
                          ),
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
                          const Text("Delivery by Thus Nov 30", style: TextStyle(fontSize: 12, color: Colors.grey),)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                         Image.network(
                           widget.img,
                           height: 100,width: 50,
                           fit: BoxFit.scaleDown,
                         ),
                          DropItems(),


                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 200,
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
                    // onTap: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage(
                    //     img: widget.img,
                    //     price: widget.price,
                    //     off: widget.off,
                    //     cutPrice: widget.cutPrice,
                    //     productName: widget.productName,
                    //   )));
                    // },
                    child: Center(child: Text("Place order", style: TextStyle(color: Colors.white),))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
