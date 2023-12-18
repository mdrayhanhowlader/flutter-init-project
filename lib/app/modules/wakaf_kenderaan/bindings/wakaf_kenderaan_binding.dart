import 'package:get/get.dart';

import '../controllers/wakaf_kenderaan_controller.dart';

class WakafKenderaanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WakafKenderaanController>(
      () => WakafKenderaanController(),
    );
  }
}
