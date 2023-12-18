import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key? key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 1.0, // Set width to 100% of the screen width
      child: Image.asset(
        'assets/images/cmsbottom_home_banner.jpg',
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}
