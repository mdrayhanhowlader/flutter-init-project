import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jemaah_pengurusan_controller.dart';

class JemaahPengurusanView extends GetView<JemaahPengurusanController> {
  const JemaahPengurusanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JemaahPengurusanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'JemaahPengurusanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
