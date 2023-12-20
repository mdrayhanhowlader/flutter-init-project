import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cms/app/modules/home/views/widgets_home/custom_navigation/custom_navigation_bottom.dart';
import 'package:cms/app/modules/home/views/widgets_home/custom_navigation/custom_navigation_top.dart';
import 'package:cms/app/modules/home/views/widgets_home/custom_navigation/castom_logo_bar.dart';

class LayoutTop extends StatefulWidget {
  const LayoutTop({super.key});

  @override
  State<LayoutTop> createState() => _LayoutTopState();
}

class _LayoutTopState extends State<LayoutTop> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNavigationTop(),
        CustomLogoBar(),
        CustomNavigationBottom(),
      ],
    );
  }
}
