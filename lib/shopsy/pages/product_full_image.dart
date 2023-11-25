import 'package:flutter/material.dart';

class ProductFullImagePage extends StatefulWidget {
   final String img;
  const ProductFullImagePage({super.key, required this.img});

  @override
  State<ProductFullImagePage> createState() => _ProductFullImagePageState();
}

class _ProductFullImagePageState extends State<ProductFullImagePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
       body: Hero(
           tag: widget.img,
           child: Image.network(widget.img, fit: BoxFit.cover,)),
    );
  }
}
