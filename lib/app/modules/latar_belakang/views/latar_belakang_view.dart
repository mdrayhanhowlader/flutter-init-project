import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/latar_belakang_controller.dart';

class LatarBelakangView extends GetView<LatarBelakangController> {
  const LatarBelakangView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LatarBelakangView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'LatarBelakangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
