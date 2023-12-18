import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sekolah_rendah_controller.dart';

class SekolahRendahView extends GetView<SekolahRendahController> {
  const SekolahRendahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SekolahRendahView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SekolahRendahView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
