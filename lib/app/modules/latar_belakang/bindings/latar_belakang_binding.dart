import 'package:get/get.dart';

import '../controllers/latar_belakang_controller.dart';

class LatarBelakangBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LatarBelakangController>(
      () => LatarBelakangController(),
    );
  }
}
