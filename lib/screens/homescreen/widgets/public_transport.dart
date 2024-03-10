import 'package:flutter/material.dart';

class PublicTrasnport extends StatelessWidget {
  const PublicTrasnport({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 4.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade200)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Public Transport",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.directions_railway_sharp),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Metro",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 3.3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "6am - 10pm",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(Icons.arrow_forward),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Divider(
                height: 1,
                color: Colors.grey.shade300,
                indent: 10,
                endIndent: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.directions_bus),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Bus",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 3.3,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "available 24hrs",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(Icons.arrow_forward),
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
