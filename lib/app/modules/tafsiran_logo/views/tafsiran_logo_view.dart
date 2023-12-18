import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tafsiran_logo_controller.dart';

class TafsiranLogoView extends GetView<TafsiranLogoController> {
  const TafsiranLogoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TafsiranLogoView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TafsiranLogoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
