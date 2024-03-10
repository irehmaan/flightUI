import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.black),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.directions,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Get direction",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7), color: Colors.black),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    Icons.call,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Call airport",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
