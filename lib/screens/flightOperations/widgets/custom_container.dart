import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String iconPath;
  final double angle;
  final String text;
  final double width;
  final IconData? iconData;
  const CustomContainer(
      {super.key,
      required this.iconPath,
      required this.angle,
      required this.text,
      required this.width,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              iconData == null
                  ? Transform.rotate(
                      angle: angle,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.asset(
                          iconPath,
                          height: 20,
                        ),
                      ),
                    )
                  : Icon(iconData),
              Text(
                text,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
