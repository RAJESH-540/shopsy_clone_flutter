import 'package:flutter/material.dart';

class DropItems extends StatefulWidget {
  const DropItems({super.key});

  @override
  State<DropItems> createState() => _DropItemsState();
}

class _DropItemsState extends State<DropItems> {
  int selectedNumber = 1;
  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: selectedNumber,
      onChanged: (int? newValue) {
        setState(() {
          selectedNumber = newValue!;
        });
      },
      items: List.generate(5, (index) {
        return DropdownMenuItem<int>(
          value: index + 1,
          child: Text('Qty: ${index + 1}'),
        );
      }),
    );
  }
}
