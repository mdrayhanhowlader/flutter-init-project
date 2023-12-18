import 'package:get/get.dart';

import '../controllers/sekolah_rendah_tahfiz_controller.dart';

class SekolahRendahTahfizBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SekolahRendahTahfizController>(
      () => SekolahRendahTahfizController(),
    );
  }
}
