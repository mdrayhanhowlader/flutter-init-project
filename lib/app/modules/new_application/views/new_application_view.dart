import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_application_controller.dart';

class NewApplicationView extends GetView<NewApplicationController> {
  const NewApplicationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            width: Get.width,
            decoration: BoxDecoration(color: Colors.blue.shade900),
            child: const Text(
              'APPLICATION INFORMATION ASNAF \nADDIN ZAKAT MANAGEMENT SYSTEM ONLINE SYSTEM',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: Get.width,
            decoration: const BoxDecoration(color: Color(0XFFFCF8E3)),
            child: Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'ATTENTION!',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 5),
                    child: const Column(
                      children: [
                        Text(
                            '- Please enter the No. Identification Card (Student) for application or application status check'),
                        Text(
                            '- Please enter the No. Identification Card (Student) for application or application status check'),
                        Text(
                            '- Please enter the No. Identification Card (Student) for application or application status check'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
