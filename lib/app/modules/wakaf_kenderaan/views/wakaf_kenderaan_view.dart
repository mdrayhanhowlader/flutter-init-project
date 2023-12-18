import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wakaf_kenderaan_controller.dart';

class WakafKenderaanView extends GetView<WakafKenderaanController> {
  const WakafKenderaanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WakafKenderaanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WakafKenderaanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
