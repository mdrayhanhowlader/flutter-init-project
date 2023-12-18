import 'package:get/get.dart';

import '../controllers/sekolah_rendah_controller.dart';

class SekolahRendahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SekolahRendahController>(
      () => SekolahRendahController(),
    );
  }
}
