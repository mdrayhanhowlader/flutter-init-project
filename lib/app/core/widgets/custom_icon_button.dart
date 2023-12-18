import 'package:cms/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
// import 'package:webasisadmin/app/core/widgets/poppins_text.dart';
// import 'package:webasisadmin/app/data/constants/extensions/widget_extensions.dart';

class CustomIconButton extends StatelessWidget {
  final String title;
  final Color? color;
  final Color? textColor;
  final String? iconImage;
  final VoidCallback onTap;
  final Widget? iconWidget;
  final double? radius;
  final double? height;

  const CustomIconButton({
    super.key,
    required this.title,
    this.color,
    this.iconImage,
    required this.onTap,
    this.iconWidget,
    this.textColor,
    this.radius,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: height ?? 38,
      decoration: BoxDecoration(
          color: color ?? Color(0xFFEEA236),
          borderRadius: BorderRadius.circular(radius ?? 12),
          border: Border.all(width: 0.50, color: Color(0xFFECECEC)),
          boxShadow: [
            BoxShadow(
              color: Color(0x0C000000),
              blurRadius: 10,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          poppins_text(
            title: title,
            size: 12,
            color: textColor ?? Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          iconWidget ?? Image.asset(iconImage ?? '', height: 15),
        ],
      ),
    ).onTap(onTap);
  }

  poppins_text(
      {required String title, required int size, required Color color}) {}
}
