import 'package:get/get.dart';

import '../controllers/wakaf_al_quran_controller.dart';

class WakafAlQuranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WakafAlQuranController>(
      () => WakafAlQuranController(),
    );
  }
}
