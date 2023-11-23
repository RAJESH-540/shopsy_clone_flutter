import 'package:flutter/material.dart';

class UiHelper {
  static InkWell circleCategoryList(
      {required String image,
      required String categoryName,
      required VoidCallback onPressed}) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 30, backgroundImage: NetworkImage(image)),
                Text(
                  categoryName,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
  }

  Card categoryListCard(
      {
      required String image,
      required String categoryName,
      required String price,
      required Color? color
      }) {
    return Card(
      elevation: 1,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Image.network(
            image,
            height: 150,
            width: 130,
            fit: BoxFit.cover,
          ),
          Text(
            categoryName,
          ),
          Text(
            price,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  ClipRRect championDeals(String image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Image.network(
            image,
            height: 150,
            width: 100,
            fit: BoxFit.cover,
          ),
          Container(
            width: 100,
            color: const Color(0xffE8C15B),
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: const Column(
              children: [
                Text(
                  "",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 11),
                ),
                Text(
                  "",
                  style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
