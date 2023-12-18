import 'package:get/get.dart';

import '../controllers/kenali_tokoh_controller.dart';

class KenaliTokohBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KenaliTokohController>(
      () => KenaliTokohController(),
    );
  }
}
