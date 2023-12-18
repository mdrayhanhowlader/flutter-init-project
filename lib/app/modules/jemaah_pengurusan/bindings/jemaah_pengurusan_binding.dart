import 'package:get/get.dart';

import '../controllers/jemaah_pengurusan_controller.dart';

class JemaahPengurusanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JemaahPengurusanController>(
      () => JemaahPengurusanController(),
    );
  }
}
