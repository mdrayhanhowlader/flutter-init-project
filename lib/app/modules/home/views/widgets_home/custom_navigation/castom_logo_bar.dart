import 'package:cms/app/data/constants/color_constant.dart';
import 'package:cms/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomLogoBar extends GetView<HomeController> {
  const CustomLogoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed('/home');
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Image.asset('assets/images/cmslogo.png'),
              ),
            ),
            const SizedBox(
              width: 150,
            ),
            Icon(
              Icons.share_outlined,
              color: ColorConstant.appColorPrimaryLight,
            ),
          ],
        ),
      ),
    );
  }
}
