import 'package:get/get.dart';

import '../controllers/tabung_dana_harta_kekal_controller.dart';

class TabungDanaHartaKekalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabungDanaHartaKekalController>(
      () => TabungDanaHartaKekalController(),
    );
  }
}
