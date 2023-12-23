import 'package:get/get.dart';

import '../controllers/addin_store_controller.dart';

class AddinStoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddinStoreController>(
      () => AddinStoreController(),
    );
  }
}
