import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sekolah_rendah_tahfiz_controller.dart';

class SekolahRendahTahfizView extends GetView<SekolahRendahTahfizController> {
  const SekolahRendahTahfizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SekolahRendahTahfizView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SekolahRendahTahfizView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
