import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DealsPage extends StatefulWidget {
   final String appBarName;
    final String imageUrl;
     final String name;
  const DealsPage( {super.key, required this.appBarName, required this.imageUrl, required this.name});

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // centerTitle: true,
        //  title: Text(
        //    "${widget.appBarName}",
        //  ),
      ),
       body: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12)
               ),
               child: Image.network(
                 widget.imageUrl,
                 fit: BoxFit.cover,
                 height: 450,
                 width: MediaQuery.of(context).size.width,),
             ),
             Text(
               widget.name,
               style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),),
           ],
         ),
       ),
    );
  }
}
