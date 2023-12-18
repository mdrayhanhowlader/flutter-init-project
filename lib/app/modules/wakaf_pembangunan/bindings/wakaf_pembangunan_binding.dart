import 'package:get/get.dart';

import '../controllers/wakaf_pembangunan_controller.dart';

class WakafPembangunanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WakafPembangunanController>(
      () => WakafPembangunanController(),
    );
  }
}
