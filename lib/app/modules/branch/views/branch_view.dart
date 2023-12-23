import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/branch_controller.dart';

class BranchView extends GetView<BranchController> {
  const BranchView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BranchView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BranchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
