import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_navigation.dart';
import 'package:cms/app/core/widgets/layouts/top/top.dart';
import 'package:cms/app/core/widgets/sub_header/sub_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  const FaqView({super.key});
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
              height: Get.height,
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '1. Is ADDIN Foundation Education under government or private funding?',
                        style: TextStyle(
                          color: Colors.green.shade600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          '- Private',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '2. What is the minimum age to enter Tahfiz ADDIN?',
                        style: TextStyle(
                          color: Colors.green.shade600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          '- From 7 years to 18 years',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       '3. Is student recruitment open to boys and girls?',
                  //       style: TextStyle(
                  //         color: Colors.green.shade600,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //     const Text(
                  //       ' - Yes',
                  //       style: TextStyle(
                  //         color: Colors.black87,
                  //       ),
                  //       textAlign: TextAlign.left,
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                ],
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
