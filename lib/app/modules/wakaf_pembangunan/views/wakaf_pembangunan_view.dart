import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wakaf_pembangunan_controller.dart';

class WakafPembangunanView extends GetView<WakafPembangunanController> {
  const WakafPembangunanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WakafPembangunanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WakafPembangunanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
