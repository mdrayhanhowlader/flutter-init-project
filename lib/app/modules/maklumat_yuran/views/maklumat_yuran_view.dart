import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/maklumat_yuran_controller.dart';

class MaklumatYuranView extends GetView<MaklumatYuranController> {
  const MaklumatYuranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MaklumatYuranView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MaklumatYuranView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
