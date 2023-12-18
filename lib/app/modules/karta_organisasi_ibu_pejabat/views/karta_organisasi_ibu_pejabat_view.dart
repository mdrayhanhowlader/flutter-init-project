import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/karta_organisasi_ibu_pejabat_controller.dart';

class KartaOrganisasiIbuPejabatView
    extends GetView<KartaOrganisasiIbuPejabatController> {
  const KartaOrganisasiIbuPejabatView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KartaOrganisasiIbuPejabatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'KartaOrganisasiIbuPejabatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
