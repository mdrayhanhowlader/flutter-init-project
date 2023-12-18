import 'package:get/get.dart';

import '../controllers/tabung_pengurusan_controller.dart';

class TabungPengurusanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabungPengurusanController>(
      () => TabungPengurusanController(),
    );
  }
}
