import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cms/app/core/widgets/poppins_text.dart';
import '../theme_text.dart';
import 'custom_login_field.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.label,
    required this.textController,
    required this.hintsText,
  });

  final String label;
  final TextEditingController textController;
  final String hintsText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PoppinsText(
            title: label,
            size: 12,
            weight: FontWeight.w500,
          ),
          CustomLoginField(
            textEditingController: textController,
            hintText: hintsText,
          ).marginOnly(top: 4, bottom: 15),
        ],
      ),
    );
  }
}
