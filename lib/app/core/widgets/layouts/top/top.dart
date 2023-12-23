import 'package:cms/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../modules/home/views/widgets_home/custom_navigation/castom_logo_bar.dart';
import '../../../../modules/home/views/widgets_home/custom_navigation/custom_navigation_bottom.dart';
import '../../../../modules/home/views/widgets_home/custom_navigation/custom_navigation_top.dart';

class LayoutTop extends GetView<HomeController> {
  const LayoutTop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomNavigationTop(),
        CustomLogoBar(),
        CustomNavigationBottom(),
      ],
    );
  }
}
