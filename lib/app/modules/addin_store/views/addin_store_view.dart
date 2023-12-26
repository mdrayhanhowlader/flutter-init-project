import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_navigation.dart';
import 'package:cms/app/core/widgets/layouts/top/top.dart';
import 'package:cms/app/core/widgets/sub_header/sub_header.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/addin_store_controller.dart';

class AddinStoreView extends GetView<AddinStoreController> {
  const AddinStoreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LayoutTop(), // layout top

            const SubHeader(), // sub header
            const SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/cms_store_img.jpg',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
            Container(
              color: Colors.black,
              child: const BottomNavigation(),
            )
          ],
        ),
      ),
    );
  }
}
