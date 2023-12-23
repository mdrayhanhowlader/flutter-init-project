import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/info_addin_controller.dart';

class InfoAddinView extends GetView<InfoAddinController> {
  const InfoAddinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InfoAddinView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InfoAddinView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
