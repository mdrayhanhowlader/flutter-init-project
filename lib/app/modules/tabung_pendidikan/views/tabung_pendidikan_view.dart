import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tabung_pendidikan_controller.dart';

class TabungPendidikanView extends GetView<TabungPendidikanController> {
  const TabungPendidikanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabungPendidikanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TabungPendidikanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
