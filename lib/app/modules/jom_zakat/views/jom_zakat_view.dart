import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/jom_zakat_controller.dart';

class JomZakatView extends GetView<JomZakatController> {
  const JomZakatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JomZakatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'JomZakatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
