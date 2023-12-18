import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabung_dana_harta_kekal_controller.dart';

class TabungDanaHartaKekalView extends GetView<TabungDanaHartaKekalController> {
  const TabungDanaHartaKekalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabungDanaHartaKekalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TabungDanaHartaKekalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
