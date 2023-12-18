import 'package:get/get.dart';

import '../controllers/tabung_pendidikan_controller.dart';

class TabungPendidikanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabungPendidikanController>(
      () => TabungPendidikanController(),
    );
  }
}
