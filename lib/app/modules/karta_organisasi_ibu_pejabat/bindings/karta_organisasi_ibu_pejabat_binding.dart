import 'package:get/get.dart';

import '../controllers/karta_organisasi_ibu_pejabat_controller.dart';

class KartaOrganisasiIbuPejabatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KartaOrganisasiIbuPejabatController>(
      () => KartaOrganisasiIbuPejabatController(),
    );
  }
}
