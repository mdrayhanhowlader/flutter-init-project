import 'package:flutter/material.dart';

class CustomLogoBar extends StatefulWidget {
  const CustomLogoBar({super.key});

  @override
  State<CustomLogoBar> createState() => _CustomLogoBarState();
}

class _CustomLogoBarState extends State<CustomLogoBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Colors.black),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/cmslogo.png'),
            const SizedBox(
              width: 150,
            ),
            Icon(
              Icons.share_outlined,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
