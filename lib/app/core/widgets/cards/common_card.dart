import 'package:flutter/material.dart';

class CommonCard extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget widget;
  final Color? bgColor;

  const CommonCard({
    super.key,
    this.padding,
    required this.widget,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      decoration: ShapeDecoration(
        color: bgColor ?? Theme.of(context).colorScheme.onPrimaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0x0C000000),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: widget,
    );
  }
}
