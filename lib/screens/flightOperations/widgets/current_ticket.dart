import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CurrentTicket extends StatelessWidget {
  const CurrentTicket({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context as BuildContext).size;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: size.height / 6.3,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade100, width: 2),
            borderRadius: BorderRadius.circular(7)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Mon, 20 Dec 24",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: size.width / 2.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      "assets/icons/plane.png",
                      height: 16,
                    ),
                  ),
                  Text(
                    "GE725",
                    style: TextStyle(
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: DottedLine(
                dashColor: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.0),
                    child: Text(
                      "DEL",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      "08:15",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 9.8,
                  ),
                  Text(
                    "2h 5m",
                    style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                  ),
                  SizedBox(
                    width: size.width / 4.7,
                  ),
                  const Text(
                    "10:15 BOM",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 2.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/flag.png",
                    height: 14,
                  ),
                  Text(
                    "New Delhi",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  ),
                  SizedBox(
                    width: size.width / 2.03,
                  ),
                  Image.asset(
                    "assets/icons/flag.png",
                    height: 14,
                  ),
                  Text(
                    "Mumbai",
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
