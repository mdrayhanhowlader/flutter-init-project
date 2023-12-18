import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabung_pengurusan_controller.dart';

class TabungPengurusanView extends GetView<TabungPengurusanController> {
  const TabungPengurusanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabungPengurusanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TabungPengurusanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
