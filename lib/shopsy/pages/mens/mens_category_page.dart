import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/womens/cateogory_detailsPage.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/mens_data/mens_inner.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/mens_data/mens_kurta.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/mens_data/mens_pants.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/mens_data/mens_shirts.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/mens_data/mens_tshirts.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/mens_data/mens_shoes.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/mens_data/mens_watches.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/women_data/slippers.dart';

import '../../componets/category_list_card.dart';
import '../../componets/uihelper.dart';

class MensFashionPage extends StatefulWidget {
  const MensFashionPage({super.key});

  @override
  State<MensFashionPage> createState() => _MensFashionPageState();
}

class _MensFashionPageState extends State<MensFashionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          centerTitle: true,
         title: Text("Men's Fashion"),
         backgroundColor: Colors.yellow[800],
       ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryListCard(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                         data: menTShirts, appBar: "Stylish Tees")));
                   },
                   color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/18999237/pexels-photo-18999237/free-photo-of-man-in-a-cap-standing-by-a-black-brick-wall.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Stylish Tees",
                    price: "₹119"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: menShoes, appBar: "Trendy Shoes")));
                    },
                    color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/293406/pexels-photo-293406.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Trendy Shoes",
                    price: "₹129"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: mensPants, appBar: "Trendy Shoes")));
                    },
                    color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/3372595/pexels-photo-3372595.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Mens Pants",
                    price: "₹149"),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: mensWatches, appBar: "Watches")));
                    },
                    color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Watches",
                    price: "₹999"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: menskurta, appBar: "Ethnic Set")));
                    },
                    color: Colors.yellow[500],
                    image: "https://newcdn.kalkifashion.com/media/wysiwyg/02-square-banner-ready-to-ship-26-10-23.jpg",
                    categoryName: "Ethnic Set",
                    price: "₹179"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: menTShirts, appBar: "Stylish Tees")));
                    },
                    color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/6347892/pexels-photo-6347892.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Tees & Combo",
                    price: "₹109"),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: mensShirts, appBar: "Stylish Tees")));
                    },
                    color: Colors.yellow[500],
                    image: "https://rukminim2.flixcart.com/image/850/1000/xif0q/shirt/f/j/t/xl-sksh-110-wh-protocol-original-imagtmtzbdgf4vwc.jpeg?q=90",
                    categoryName: "Shirts",
                    price: "₹199"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: mensInnerWear, appBar: "Inner Wear")));
                    },
                    color: Colors.yellow[500],
                    image: "https://5.imimg.com/data5/SELLER/Default/2022/9/UX/AN/PI/99662100/megha-brief-short.jpg",
                    categoryName: "Inner Wear",
                    price: "₹299"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: womenSlippers, appBar: "Slippers")));
                    },
                    color: Colors.yellow[500],
                    image: "https://assets.ajio.com/medias/sys_master/root/h9c/h6c/14648885084190/nike__offcourt_slides_with_embossed_branding.jpg",
                    categoryName: "Flip Flop",
                    price: "₹109"),
              ],
            ),
          ),

        ],

      ),
    );
  }
}
