import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menengah_rendah_controller.dart';

class MenengahRendahView extends GetView<MenengahRendahController> {
  const MenengahRendahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenengahRendahView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MenengahRendahView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
