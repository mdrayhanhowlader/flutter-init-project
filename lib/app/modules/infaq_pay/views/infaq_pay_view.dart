import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/infaq_pay_controller.dart';

class InfaqPayView extends GetView<InfaqPayController> {
  const InfaqPayView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InfaqPayView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InfaqPayView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
