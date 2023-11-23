import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/product_detail_page.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/women_tshirts_data.dart';



class WomenCategoryDetailsPage extends StatefulWidget {
   final  List<Map<String, String>> data;
   final String appBar;
   const WomenCategoryDetailsPage({super.key, required this.data, required this.appBar});

  @override
  State<WomenCategoryDetailsPage> createState() => _WomenCategoryDetailsPageState();
}

class _WomenCategoryDetailsPageState extends State<WomenCategoryDetailsPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text(widget.appBar),
         centerTitle: true,
       ),
      body:
        GridView.builder(
          physics:  const ScrollPhysics( ),
          scrollDirection: Axis.vertical,
          itemCount: womenTshirts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: 1/1.5
          ), itemBuilder: (context, index){
        return  GestureDetector(
          onTap: (){
             final String img ="${widget.data[index]["img"]}";
              final String price= "${widget.data[index]["price"]}";
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsPage(
                  img: img, price: price,
              )));

          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              children: [
                Hero(

                  tag: "img",
                  child: Image.network(
                    "${widget.data[index]["img"]}" ,
                    height: 250,
                    width:  MediaQuery.of(context).size.width,
                    fit:    BoxFit.cover,),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color:    const Color(0xffE8C15B),
                  padding:  const EdgeInsets.symmetric(horizontal: 8,),
                  child: Column(
                    children: [
                      Text(
                        "${widget.data[index]["name"]}",
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontSize: 11),
                      ),
                      Text(
                        "${widget.data[index]["price"]}",
                        style: const TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.w900),),
                    ],
                  ),
                )
              ],
            ),
          ),
        ) ;
      })
    );


  }
}
