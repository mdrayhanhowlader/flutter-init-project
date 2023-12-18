import 'package:get/get.dart';

import '../controllers/kedai_addin_controller.dart';

class KedaiAddinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KedaiAddinController>(
      () => KedaiAddinController(),
    );
  }
}
