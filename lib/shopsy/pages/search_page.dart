import 'package:flutter/material.dart';
import 'package:shopsy_clone/shopsy/componets/search_items.dart';
import 'package:shopsy_clone/shopsy/pages/beautyPage.dart';
import 'package:shopsy_clone/shopsy/pages/homeListPage.dart';
import 'package:shopsy_clone/shopsy/pages/mens/mens_category_page.dart';
import 'package:shopsy_clone/shopsy/pages/womens/women_category.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey[150],
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6))),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WomenFashion()));
                    },
                    child:const SearchItems(searchName: "Women's Fashion",)
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MensFashionPage()));
                    },
                    child: const SearchItems(searchName: "Men's Fashion",)
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeListPage()));
                    },
                    child: const SearchItems(searchName: 'Home',)
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BeautyPageList()));
                    },
                    child: const SearchItems(searchName: "Beauty & more",)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
