import 'package:get/get.dart';

import '../controllers/menengah_rendah_controller.dart';

class MenengahRendahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MenengahRendahController>(
      () => MenengahRendahController(),
    );
  }
}
