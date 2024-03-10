import 'package:flutter/material.dart';

class ContactAirport extends StatelessWidget {
  const ContactAirport({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: size.height / 2.7,
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
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      "Contact Airport",
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Police",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 40,
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      child: IconButton(
                          padding: const EdgeInsets.all(2),
                          onPressed: () {},
                          icon: const Icon(Icons.call)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Lost and found",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 40,
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      child: IconButton(
                          padding: const EdgeInsets.all(2),
                          onPressed: () {},
                          icon: const Icon(Icons.call)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Transport",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 40,
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      child: IconButton(
                          padding: const EdgeInsets.all(2),
                          onPressed: () {},
                          icon: const Icon(Icons.call)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Text(
                      "Head Office",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: 40,
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade100),
                      child: IconButton(
                          padding: const EdgeInsets.all(2),
                          onPressed: () {},
                          icon: const Icon(Icons.call)),
                    ),
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
