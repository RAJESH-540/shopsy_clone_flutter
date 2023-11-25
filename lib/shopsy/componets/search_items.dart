import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchItems extends StatelessWidget {
    final String searchName;
  const SearchItems({super.key, required this.searchName});

  @override
  Widget build(BuildContext context) {
    return
        Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(2),
              // border: Border.all( width: 1, color: Colors.grey),
            ),
            child: Text(searchName, style: TextStyle(color: Colors.deepPurpleAccent),));
  }
}
