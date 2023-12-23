import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:cms/app/core/services/local_db_services/local_db_services.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<APIService>(
      () => APIService(),
    );
    Get.lazyPut<LocalDBService>(
      () => LocalDBService(),
    );
  }
}
