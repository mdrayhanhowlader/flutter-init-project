import 'package:cms/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms/app/modules/addin_store/views/addin_store_view.dart';
import 'package:cms/app/modules/faq/views/faq_view.dart';
import 'package:cms/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavigationBottom extends GetView<HomeController> {
  const CustomNavigationBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width * 100,
      decoration: const BoxDecoration(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 0,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'E-INFAQ',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(width: 50),
              const Text(
                'COLLABORATIVE',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(width: 50),
              const Text(
                'ASK FOR ZAKAT',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              const SizedBox(width: 50),
              const Text(
                'FAQ',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ).onTap(() {
                Get.to(FaqView());
              }),
              const SizedBox(width: 50),
              const Text(
                'ADDIN STORE',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ).onTap(() {
                Get.to(() => AddinStoreView());
              }),
              SizedBox(width: 50),
            ],
          )),
        ),
      ),
    );
  }
}
