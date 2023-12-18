import 'package:get/get.dart';

import '../controllers/syarat_kemasukan_controller.dart';

class SyaratKemasukanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SyaratKemasukanController>(
      () => SyaratKemasukanController(),
    );
  }
}
