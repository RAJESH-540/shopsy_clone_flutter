import 'package:flutter/material.dart';
import '../shopsy_data/women_category.dart';

class CategoriesListPage extends StatefulWidget {
   final String appBarName;
  const CategoriesListPage({super.key, required this.appBarName});

  @override
  State<CategoriesListPage> createState() => _CategoriesListPagState();
}

class _CategoriesListPagState extends State<CategoriesListPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
         title: Text("${widget.appBarName}"),
       ),
       body: GridView.builder(
          itemCount: womenCategoryList.length,
            physics: const  ScrollPhysics(),
           gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8.0,
             crossAxisSpacing: 8.0,
             childAspectRatio: 1/1.65,
             crossAxisCount: 3
           ),
           itemBuilder: (context, index){
             return Card(
               color: Colors.deepPurpleAccent[100],
               elevation: 1.0,
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
               child: Container(
                 // padding:const  EdgeInsets.all(8.0),
                 width: MediaQuery.of(context).size.width,
                 height: 310,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color: Colors.deepPurpleAccent[300],
                 ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Image.network("${womenCategoryList[index]["url"]}",  height: 150, width: MediaQuery.of(context).size.width,
                     fit: BoxFit.cover,),
                     Text("${womenCategoryList[index]["Name"]}",
                       textAlign: TextAlign.center,
                       style:  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                     Text("${womenCategoryList[index]["price"]}",
                       textAlign: TextAlign.center,
                       style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

                   ],
                 ),
               ),
             );
           }),

    );
  }
}
