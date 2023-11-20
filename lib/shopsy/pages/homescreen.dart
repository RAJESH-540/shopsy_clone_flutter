import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/pages/login.dart';

import '../shopsy_data/category.dart';
import '../shopsy_data/data.dart';
import '../shopsy_data/deals.dart';
import 'categories.dart';
import 'dealspage.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
          backgroundColor: Colors.white,
         elevation: 0,
         leading: Image.asset("assets/images/side_logo.webp"),
          leadingWidth: 70,
          actions:  [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                children: [
                   Icon(Icons.search,
                     color: Colors.deepPurpleAccent,),
                   SizedBox(width: 5,),
                   Icon(Icons.shopping_cart,
                     color: Colors.deepPurpleAccent,
                   ),
                  SizedBox(width: 10,),
                   GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
                      },
                     child: Text("Login", style: TextStyle(
                         color: Colors.deepPurpleAccent,
                         fontSize: 15, fontWeight: FontWeight.bold ),),
                   )

                ],
              ),
            )
          ],
       ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 210,
               width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/sara.jpeg",
                    fit: BoxFit.cover,),
               // height: 200, width: MediaQuery.of(context).size.width,),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  itemCount: instaData.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return  GestureDetector(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesListPage(
                             appBarName:  "${categoryData[index]["Name"]}",)));
                       },
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    backgroundImage:  NetworkImage(
                                      "${categoryData[index]["url"]}",
                                    )
                                ),
                                Text(
                                  "${categoryData[index]["Name"]}",
                                  textAlign: TextAlign.center,
                                  style: const  TextStyle(
                                      color: Colors.deepPurpleAccent,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 10,),
            const Text("Champion Deal on Bestseller", style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
            const  Padding(
              padding: EdgeInsets.symmetric(horizontal: 60.0),
              child: Divider(color: Color(0xffE8C15B),  thickness: 2,),
            ),
            const SizedBox(height: 10,),
            Container(
               padding:  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                height: 600,
                // color: CupertinoColors.systemGrey4,
                width: MediaQuery.of(context).size.width,
                child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(12)
                   ),
                  child: GridView.builder(
                     physics:  const ScrollPhysics( ),
                     scrollDirection: Axis.vertical,
                     itemCount: championDeals.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 3,
                        crossAxisSpacing: 8.0,
                         mainAxisSpacing: 8.0,
                          childAspectRatio: 1/1.6
                      ), itemBuilder: (context, index){
                         return  GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> DealsPage(
                                    appBarName: "${championDeals[index]["Name"]}",),
                                  ));
                            },
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(12),
                             child: Column(
                               children: [
                                 Image.network("${championDeals[index]["url"]}" ,
                                   height: 150,
                                   width:  MediaQuery.of(context).size.width,
                                   fit:    BoxFit.cover,),
                                 Container(
                                    width: MediaQuery.of(context).size.width,
                                    color:    const Color(0xffE8C15B),
                                    padding:  const EdgeInsets.symmetric(horizontal: 8,),
                                   child: Column(
                                     children: [
                                       Text(
                                           "${championDeals[index]["Name"]}",
                                         style: const TextStyle(
                                             color: Colors.black,
                                             fontWeight: FontWeight.w800,
                                             fontSize: 11),
                                       ),
                                       Text(
                                           "${championDeals[index]["From"]}",
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
                  }),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
