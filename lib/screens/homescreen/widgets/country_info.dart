import 'package:flutter/material.dart';

class CountrySection extends StatelessWidget {
  const CountrySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Text(
                "Dubai Airport - DXB",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Dubai .",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.grey.shade400),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: Image.asset(
                  'assets/icons/uae_flag.png',
                  height: 13,
                ),
              ),
              Text(
                "United Arab Emirates",
                style: TextStyle(
                    fontWeight: FontWeight.w400, color: Colors.grey.shade400),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
