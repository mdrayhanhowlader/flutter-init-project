import 'package:cms/app/core/widgets/layouts/bottom/bottom.dart';
import 'package:cms/app/core/widgets/layouts/top/top.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  const FaqView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LayoutTop(),
            SizedBox(
              height: 100,
            ),
            LayoutBottom()
          ],
        ),
      ),
    );
  }
}
