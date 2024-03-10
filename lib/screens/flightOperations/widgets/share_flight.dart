import 'package:flutter/material.dart';

import 'custom_container.dart';

class ShareFlight extends StatelessWidget {
  const ShareFlight({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomContainer(
            width: 140,
            iconPath: 'assets/icons/ticket.png',
            angle: 3.14 / -9.1,
            text: 'Boarding Pass'),
        CustomContainer(
            width: 115,
            iconPath: 'assets/icons/whatsapp.png',
            angle: 0,
            text: 'Share trip'),
        CustomContainer(
          iconPath: '',
          angle: 0,
          text: '',
          width: 40,
          iconData: Icons.more_horiz,
        ),
      ],
    );
  }
}
