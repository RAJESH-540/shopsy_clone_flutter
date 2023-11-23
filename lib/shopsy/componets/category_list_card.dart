import 'package:flutter/material.dart';

class CategoryListCard extends StatelessWidget {
  final String image;
  final String categoryName;
  final String price;
  final Color? color;
   final VoidCallback? onTap;

  const CategoryListCard(
      {super.key,
      required this.image,
      required this.categoryName,
      required this.price,
      this.color,  this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: onTap,
      child: Card(
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
      ),
    );
  }
}
