import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/objektif_controller.dart';

class ObjektifView extends GetView<ObjektifController> {
  const ObjektifView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ObjektifView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ObjektifView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
