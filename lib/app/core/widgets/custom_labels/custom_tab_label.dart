import 'package:flutter/material.dart';

class CustomTabLabel extends StatelessWidget {
  String imgSrc;
  String label;
  CustomTabLabel({
    super.key,
    required this.imgSrc,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imgSrc,
          color: Theme.of(context).textTheme.titleSmall!.color,
          height: 18,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
