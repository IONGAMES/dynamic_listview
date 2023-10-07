import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final int number;

  const ListItem({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      child: Card(
        color: Colors.lightBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Center(
            child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        )),
      ),
    );
  }
}
