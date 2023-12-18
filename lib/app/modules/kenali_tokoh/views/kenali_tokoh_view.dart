import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/kenali_tokoh_controller.dart';

class KenaliTokohView extends GetView<KenaliTokohController> {
  const KenaliTokohView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KenaliTokohView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'KenaliTokohView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
