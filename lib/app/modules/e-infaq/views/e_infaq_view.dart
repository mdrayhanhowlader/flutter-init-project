import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_navigation.dart';
import 'package:cms/app/core/widgets/layouts/top/top.dart';
import 'package:cms/app/core/widgets/sub_header/sub_header.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/e_infaq_controller.dart';

class EInfaqView extends GetView<EInfaqController> {
  const EInfaqView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LayoutTop(), // layout top

            const SubHeader(), // sub header

            const SizedBox(
              height: 100,
            ),
            Container(
              width: Get.width * 0.8,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/e-infaq.jpg',
                    fit: BoxFit.contain,
                    height: 800,
                    width: double.infinity,
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Every year, the ADDIN Foundation will strive to provide approximately 400 copies of the Al-Quran for the memorization of ADDIN MTQ new students. This aims to ensure that the Al-Quran that is used is consistent across the entire territory managed by the ADDIN Foundation.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Every year, the ADDIN Foundation will strive to provide approximately 400 copies of the Al-Quran for the memorization of ADDIN MTQ new students. This aims to ensure that the Al-Quran that is used is consistent across the entire territory managed by the ADDIN Foundation.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Every year, the ADDIN Foundation will strive to provide approximately 400 copies of the Al-Quran for the memorization of ADDIN MTQ new students. This aims to ensure that the Al-Quran that is used is consistent across the entire territory managed by the ADDIN Foundation.',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 100,
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
