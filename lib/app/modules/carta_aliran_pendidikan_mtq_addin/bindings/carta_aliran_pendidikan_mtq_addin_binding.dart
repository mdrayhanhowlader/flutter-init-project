import 'package:get/get.dart';

import '../controllers/carta_aliran_pendidikan_mtq_addin_controller.dart';

class CartaAliranPendidikanMtqAddinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartaAliranPendidikanMtqAddinController>(
      () => CartaAliranPendidikanMtqAddinController(),
    );
  }
}
