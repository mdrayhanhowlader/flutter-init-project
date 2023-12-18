import 'package:flutter/material.dart';
import 'package:cms/app/data/constants/extensions/widget_extensions.dart';

class SquareIconBtn extends StatelessWidget {
  final String src;
  VoidCallback action;
  EdgeInsetsGeometry? margin;
  bool? isDrawer;

  SquareIconBtn({
    super.key,
    required this.src,
    required this.action,
    this.margin,
    this.isDrawer = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: margin == null
          ? isDrawer == true
              ? const EdgeInsets.symmetric(
                  horizontal: 13,
                  vertical: 6.5,
                )
              : const EdgeInsets.symmetric(vertical: 14, horizontal: 3.8)
          : margin,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          const BoxShadow(
            color: const Color(0x0C000000),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Image.asset(
        src,
        color: Theme.of(context).textTheme.titleSmall!.color,
        scale: isDrawer == true ? 1 : 1.1,
      ),
    ).onTap(action);
  }
}
