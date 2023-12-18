import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme_text.dart';
import 'dropdown_border_below_btn.dart';

class CustomFormDropdown extends StatelessWidget {
  const CustomFormDropdown({
    super.key,
    required this.label,
    required this.hintsText,
    required this.onChanged,
    required this.listItems,
    this.value,
  });

  final String label;
  final String hintsText;
  final dynamic Function(dynamic) onChanged;
  final List<DropdownMenuItem<dynamic>> listItems;
  final dynamic value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ThemeText(
            title: label,
            size: 12,
            weight: FontWeight.w500,
          ),
          DropdownBorderBelowBtn(
            initialValue: value,
            hintText: hintsText,
            onChanged: onChanged,
            options: listItems,
          ).marginOnly(top: 4, bottom: 15),
        ],
      ),
    );
  }
}
