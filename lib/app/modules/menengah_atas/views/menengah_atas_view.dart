import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/menengah_atas_controller.dart';

class MenengahAtasView extends GetView<MenengahAtasController> {
  const MenengahAtasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenengahAtasView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MenengahAtasView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
