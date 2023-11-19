import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../shopsy_data/category.dart';
import '../shopsy_data/deals.dart';


class DealsPage extends StatefulWidget {
   final String appBarName;
  const DealsPage( {super.key, required this.appBarName});

  @override
  State<DealsPage> createState() => _DealsPageState();
}

class _DealsPageState extends State<DealsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         title: Text(
           "${widget.appBarName}",
         ),
      ),
       body: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
               child:
               GridView.builder(
                   physics:  const ScrollPhysics( ),
                   scrollDirection: Axis.vertical,
                  itemCount: categoryData.length,
                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                     mainAxisSpacing: 8,
                     crossAxisSpacing: 8,
                     childAspectRatio: 1/1.5
                   ),
                   itemBuilder: (context,index){
                     return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)
                        ),
                       child: Column(
                         children: [
                             Container(
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(12)
                               ),
                               child: Image.network("${categoryData[index]["url"]}",
                                 fit: BoxFit.cover,
                                 height: 250,
                               width: MediaQuery.of(context).size.width,),
                             ),
                           Container(
                              width: MediaQuery.of(context).size.width,
                             color:CupertinoColors.systemGrey2,
                              child:
                              Text(
                                "${championDeals[index]["Name"]}",
                                textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
                           )

                           // Text("${categoryData[index]["Name"]}")
                         ],
                       ),
                     );
                   }),
             ),
           ],
         ),
       ),
    );
  }
}
