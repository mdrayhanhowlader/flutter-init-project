import 'package:flutter/material.dart';
import 'package:cms/app/core/widgets/custom_navigation/custom_navigation_bottom.dart';
import 'package:cms/app/core/widgets/custom_navigation/custom_navigation_top.dart';
import 'package:cms/app/core/widgets/custom_navigation/castom_logo_bar.dart';

class LayoutTop extends StatefulWidget {
  const LayoutTop({super.key});

  @override
  State<LayoutTop> createState() => _LayoutTopState();
}

class _LayoutTopState extends State<LayoutTop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomNavigationTop(),
        const CustomLogoBar(),
        const CustomNavigationBottom(),
      ],
    );
  }
}
