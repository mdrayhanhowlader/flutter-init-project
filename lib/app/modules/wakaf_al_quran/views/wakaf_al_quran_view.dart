import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wakaf_al_quran_controller.dart';

class WakafAlQuranView extends GetView<WakafAlQuranController> {
  const WakafAlQuranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WakafAlQuranView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WakafAlQuranView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
