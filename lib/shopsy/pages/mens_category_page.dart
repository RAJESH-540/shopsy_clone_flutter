import 'package:flutter/material.dart';

import '../componets/uihelper.dart';

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
                UiHelper.womenCategoryList(
                   color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/18999237/pexels-photo-18999237/free-photo-of-man-in-a-cap-standing-by-a-black-brick-wall.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Stylish Tees",
                    price: "₹119"),
                UiHelper.womenCategoryList(
                    color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/293406/pexels-photo-293406.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Trendy Shoes",
                    price: "₹129"),
                UiHelper.womenCategoryList(
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
                UiHelper.womenCategoryList(
                    color: Colors.yellow[500],
                    image: "https://images.pexels.com/photos/190819/pexels-photo-190819.jpeg?auto=compress&cs=tinysrgb&w=600",
                    categoryName: "Watches",
                    price: "₹999"),
                UiHelper.womenCategoryList(
                    color: Colors.yellow[500],
                    image: "https://newcdn.kalkifashion.com/media/wysiwyg/02-square-banner-ready-to-ship-26-10-23.jpg",
                    categoryName: "Ethnic Set",
                    price: "₹179"),
                UiHelper.womenCategoryList(
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
                UiHelper.womenCategoryList(
                    color: Colors.yellow[500],
                    image: "https://rukminim2.flixcart.com/image/850/1000/xif0q/shirt/f/j/t/xl-sksh-110-wh-protocol-original-imagtmtzbdgf4vwc.jpeg?q=90",
                    categoryName: "Shirts",
                    price: "₹199"),
                UiHelper.womenCategoryList(
                    color: Colors.yellow[500],
                    image: "https://5.imimg.com/data5/SELLER/Default/2022/9/UX/AN/PI/99662100/megha-brief-short.jpg",
                    categoryName: "Inner Wear",
                    price: "₹299"),
                UiHelper.womenCategoryList(
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
