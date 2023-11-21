import 'package:flutter/material.dart';

class DealsPageDetails extends StatefulWidget {
  const DealsPageDetails({super.key});

  @override
  State<DealsPageDetails> createState() => _DealsPageDetailsState();
}

class _DealsPageDetailsState extends State<DealsPageDetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Column(
       children: [
         Image.asset("", height: 300,width: MediaQuery.of(context).size.width, fit: BoxFit.cover,)
       ],
     ),
    );
  }
}
