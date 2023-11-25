import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/womens/cateogory_detailsPage.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/beauty.dart';

import '../componets/category_list_card.dart';

class BeautyPageList extends StatefulWidget {
  const BeautyPageList({super.key});

  @override
  State<BeautyPageList> createState() => _BeautyPageListState();
}

class _BeautyPageListState extends State<BeautyPageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor:  Colors.yellow[700],
         title: const Text("Beauty & Makeup"),
         centerTitle: true,
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
                          data: beauty, appBar: "Beauty")));
                    },
                    color: Colors.yellow[500],
                    image: "https://www.biotique.com/cdn/shop/files/8904352004186_4-min.jpg?v=1670244496",
                    categoryName: "Face wash & more",
                    price: "₹109"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://imgmedia.lbb.in/media/2020/07/5efefd94c36ef475084d3eb8_1593769364270.jpg",
                    categoryName: "Lipsticks",
                    price: "₹129"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://www.instyle.com/thmb/EEMgjquOFje1Bs8oLqzfdlrRI3w=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Best-Clean-Haircare-Brands-IS-tout-15ec62f477ca46a99726f50a6625a8a7.jpg",
                    categoryName: "Hair Care",
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
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://www.fashioncolour.in/cdn/shop/files/DSC02023.jpg?v=1690175575",
                    categoryName: "Makeup Brushes",
                    price: "₹199"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://nathabit.in/cdn/shop/products/strongneem-bhringraj-summer-hair-oilstrong-brianti-dandruff-blendi-676139_grande.jpg?v=1659058675",
                    categoryName: "Hair Oil",
                    price: "₹179"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://thedeconstruct.in/cdn/shop/products/skin-soothe-moisturizer-1-ceramide-02-bisabolol-223436.jpg?v=1689238770",
                    categoryName: "Moisturisers",
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
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://rukminim2.flixcart.com/image/850/1000/xif0q/hair-dryer/p/f/4/hair-dryer-personal-care-mini-hair-straightener-set-of-2-slukrl-original-imagtyffzqnzu2y7.jpeg?q=20",
                    categoryName: "Stylish Devices",
                    price: "₹199"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://i.pinimg.com/736x/8f/12/ff/8f12ff4279468b912476f7cd88377218.jpg",
                    categoryName: "Nail Paints ",
                    price: "₹299"),
                CategoryListCard(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                          data: beauty, appBar: "Lipsticks")));
                    },
                    color: Colors.yellow[500],
                    image: "https://image.made-in-china.com/202f0j00JEBbHLDPsIgt/Baby-Girl-Cute-Plush-Cartoon-Flower-Bow-Hair-Clips-Children-Coffee-Color.webp",
                    categoryName: "Hair Accessories",
                    price: "₹109"),
              ],
            ),
          ),

        ],

      ),
    );
  }
}
