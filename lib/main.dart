import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:cms/app/core/services/local_db_services/local_db_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(LocalDBService());
  Get.put(APIService()); // Register APIService here
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
