import 'package:flutter/material.dart';

class ContainerForHorizontaltab extends StatelessWidget {
  final int selectedIndex;
  final String data;

  const ContainerForHorizontaltab(
      {super.key, required this.selectedIndex, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: selectedIndex == 0 ? Colors.black : Colors.grey.shade300),
      child: Center(
          child: Text(
        data,
        style:
            TextStyle(color: selectedIndex == 0 ? Colors.white : Colors.black),
      )),
    );
  }
}
