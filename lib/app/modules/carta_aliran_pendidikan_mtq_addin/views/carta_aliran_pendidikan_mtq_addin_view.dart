import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/carta_aliran_pendidikan_mtq_addin_controller.dart';

class CartaAliranPendidikanMtqAddinView
    extends GetView<CartaAliranPendidikanMtqAddinController> {
  const CartaAliranPendidikanMtqAddinView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CartaAliranPendidikanMtqAddinView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CartaAliranPendidikanMtqAddinView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
