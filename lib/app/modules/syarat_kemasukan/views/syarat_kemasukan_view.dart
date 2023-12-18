import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/syarat_kemasukan_controller.dart';

class SyaratKemasukanView extends GetView<SyaratKemasukanController> {
  const SyaratKemasukanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SyaratKemasukanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SyaratKemasukanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
