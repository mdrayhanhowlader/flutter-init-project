import 'package:get/get.dart';

import '../controllers/maklumat_yuran_controller.dart';

class MaklumatYuranBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaklumatYuranController>(
      () => MaklumatYuranController(),
    );
  }
}
