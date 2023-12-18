import 'package:get/get.dart';

import '../controllers/menengah_atas_controller.dart';

class MenengahAtasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenengahAtasController>(
      () => MenengahAtasController(),
    );
  }
}
