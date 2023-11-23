import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
   final String img;
    final String price;
  const ProductDetailsPage({super.key, required this.img, required this.price});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: "img",
            child: Image.network(
              widget.img,
              height: 450,
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(widget.price,
               textAlign: TextAlign.start,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}
