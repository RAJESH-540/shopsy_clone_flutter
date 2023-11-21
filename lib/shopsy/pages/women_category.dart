import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/componets/uihelper.dart';

class WomenCategory extends StatefulWidget {
  const WomenCategory({super.key});

  @override
  State<WomenCategory> createState() => _WomenCategoryState();
}

class _WomenCategoryState extends State<WomenCategory> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
         title: Text("Women's Fashion"),
        centerTitle: true,
      ),
       body:
       Column(
          children: [
            SingleChildScrollView(
               scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  UiHelper.womenCategoryList(
                    color: Colors.deepPurple[200],
                      image: "https://images.pexels.com/photos/19107593/pexels-photo-19107593/free-photo-of-portrait-of-a-young-woman-wearing-a-white-top.jpeg?auto=compress&cs=tinysrgb&w=600",
                      categoryName: "Fashionable Tees",
                      price: "₹119"),
                  UiHelper.womenCategoryList(
                      color: Colors.deepPurple[200],
                      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShWxEpBewmKdZy6SO1JV5tnkaEMnT8gdiKpLbZVOaU5H7f0b6s_scCVmslyXRzuSJ2-sU&usqp=CAU",
                      categoryName: "Stylish Kurti",
                      price: "₹129"),
                  UiHelper.womenCategoryList(
                      color: Colors.deepPurple[200],
                      image: "https://images.pexels.com/photos/9333036/pexels-photo-9333036.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                      categoryName: "Elegant Sarees",
                      price: "₹149"),
                ],
              ),
            ),
            SingleChildScrollView(
               scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  UiHelper.womenCategoryList(
                      color: Colors.deepPurple[200],
                      image: "https://images.pexels.com/photos/1446161/pexels-photo-1446161.jpeg?auto=compress&cs=tinysrgb&w=600",
                      categoryName: "Jewellery Sets",
                      price: "₹119"),
                  UiHelper.womenCategoryList(
                      color: Colors.deepPurple[200],
                      image: "https://images.pexels.com/photos/8752654/pexels-photo-8752654.jpeg?auto=compress&cs=tinysrgb&w=600",
                      categoryName: "Ethnic Set",
                      price: "₹179"),
                  UiHelper.womenCategoryList(
                      color: Colors.deepPurple[200],
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
                      color: Colors.deepPurple[200],
                      image: "https://images.pexels.com/photos/8483994/pexels-photo-8483994.jpeg?auto=compress&cs=tinysrgb&w=600",
                      categoryName: "Sling Bags & More",
                      price: "₹199"),
                  UiHelper.womenCategoryList(
                      color: Colors.deepPurple[200],
                      image: "https://rukminim1.flixcart.com/image/300/300/l0r1j0w0/slipper-flip-flop/1/g/w/8-butterfly-p-brauch-pink-original-imagcgym7wcyduzf.jpeg?q=90",
                      categoryName: "Flat & Flip Flops",
                      price: "₹299"),
                  UiHelper.womenCategoryList(
                      color: Colors.deepPurple[200],
                      image: "https://images.pexels.com/photos/7275390/pexels-photo-7275390.jpeg?auto=compress&cs=tinysrgb&w=600",
                      categoryName: "Pants",
                      price: "₹109"),
                ],
              ),
            ),

          ],

       ),
    );
  }
}
