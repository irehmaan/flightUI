import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final String? iconPath;
  final String data;
  final double height;
  final String description;
  final IconData? iconData;
  const InfoTile(
      {super.key,
      this.iconPath,
      required this.data,
      required this.description,
      required this.height,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: iconPath == null
                ? Icon(
                    Icons.calendar_month,
                    size: height,
                  )
                : Image.asset(
                    iconPath!,
                    height: height,
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              data,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            description,
            style: const TextStyle(
                color: Colors.grey, fontSize: 11, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
