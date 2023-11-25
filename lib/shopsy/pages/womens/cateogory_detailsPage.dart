import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/product_detail_page.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/women_data/women_tshirts_data.dart';



class CategoryListDetailsPage extends StatefulWidget {
   final  List<Map<String, String>> data;
   final String appBar;
   const CategoryListDetailsPage({super.key, required this.data, required this.appBar});

  @override
  State<CategoryListDetailsPage> createState() => _CategoryListDetailsPageState();
}

class _CategoryListDetailsPageState extends State<CategoryListDetailsPage> {



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
          itemCount: widget.data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 0.0,
              childAspectRatio: 1/1.54
          ), itemBuilder: (context, index){
        return  GestureDetector(
          onTap: (){
             final String img ="${widget.data[index]["img"]}";
              final String price= "${widget.data[index]["price"]}";
               final String off ="${widget.data[index]["off"]}";
               final String cutPrice ="${widget.data[index]["cut"]}";
               final String productName ="${widget.data[index]["name"]}";
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailsPage(
                  img: img,
                 price: price,
                 off: off,
                cutPrice: cutPrice,
                productName: productName,
              )));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              children: [
                Hero(
                  tag: "${widget.data[index]["img"]}",
                  child: Image.network(
                    "${widget.data[index]["img"]}" ,
                    height: 250,
                    width:  MediaQuery.of(context).size.width,
                    fit:    BoxFit.scaleDown,),
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
