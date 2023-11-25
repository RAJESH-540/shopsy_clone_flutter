import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/womens/cateogory_detailsPage.dart';
import 'package:shopsy_clone/shopsy/shopsy_data/home_data/bedsheets.dart';

import '../componets/category_list_card.dart';
import '../componets/uihelper.dart';

class HomeListPage extends StatefulWidget {
  const HomeListPage({super.key});

  @override
  State<HomeListPage> createState() => _HomeListPageState();
}

class _HomeListPageState extends State<HomeListPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         title: Text("Home"),
          backgroundColor: Colors.deepPurpleAccent[100],
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
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://assets.ajio.com/medias/sys_master/root/20220323/k91g/623a22edaeb26921afeb3528/-1117Wx1400H-469149932-beige-MODEL.jpg",
                     price: "₹299",
                     categoryName: 'DoubleBed Sheet'),
                 CategoryListCard(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://m.media-amazon.com/images/I/71ZRX1MDF9L.jpg",
                     categoryName: "Walls Sticker",
                     price: "₹129"),
                 CategoryListCard(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://www.wonderchef.com/cdn/shop/files/NBCKMRed1_1024x1024.jpg?v=1697457159",
                     categoryName: "Chopper & Juices",
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
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://www.ikea.com/in/en/images/products/silverloenn-sheer-curtains-1-pair-white__1209501_pe909266_s5.jpg",
                     categoryName: "Curtains",
                     price: "₹119"),
                 CategoryListCard(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://nestasia.in/cdn/shop/files/2_875c981d-67a8-4fb9-ae38-c98e89995bf0_550x.jpg?v=1658921363",
                     categoryName: "Dinner Set",
                     price: "₹179"),
                 CategoryListCard(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://puresourceindia.in/wp-content/uploads/2021/02/91yrH6oGVvL._SL1500_-3.jpg",
                     categoryName: "Container & Jars",
                     price: "₹299"),
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
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://masonhome.in/cdn/shop/products/MC14-1.jpg?v=1644586051",
                     categoryName: "Cups",
                     price: "₹199"),
                 CategoryListCard(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://saritahanda.com/media/mf_webp/jpg/media/catalog/product/cache/b6cdab4518d7bc55fbea12b56b1dee26/s/h/sh00012834_1.webp",
                     categoryName: "Cushions & Cover",
                     price: "₹299"),
                 CategoryListCard(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryListDetailsPage(
                           data: bedsheet, appBar: "Bedsheet")));
                     },
                     color: Colors.deepPurple[200],
                     image: "https://m.media-amazon.com/images/I/81U2DISud9L._AC_UF1000,1000_QL80_.jpg",
                     categoryName: "Key Holders",
                     price: "₹109"),
               ],
             ),
           ),

         ],

       ),
    );
  }
}
