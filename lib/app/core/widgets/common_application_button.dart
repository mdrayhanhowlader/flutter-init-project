import 'package:cms/app/core/widgets/theme_text.dart';
import 'package:cms/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class CommonApplicationButton extends StatelessWidget {
  const CommonApplicationButton({
    super.key,
    required this.img,
    required this.title,
    required this.onTapFunction,
  });

  final String img;
  final String title;
  final Function onTapFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 75,
          padding: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.secondary,
            boxShadow: [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 8,
                offset: Offset(0, 2),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(
              img,
              height: 40,
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        ThemeText(
          title: title,
          size: 10.0,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ).onTap(onTapFunction);
  }
}
