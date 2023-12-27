import 'dart:convert';

import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:cms/app/data/models/web_nav/web_nav_model.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class NavRepository {
  final serviceApi = Get.find<APIService>();

  Future<NavModel?> getNav() async {
    try {
      if (kDebugMode) {
        print('working user api');
      }
      dio.Response response = await serviceApi
          .post('/getNavheader.php', {"sid": "1", "sysapp": "alumni"});
      final navModel = navModelFromJson(jsonEncode(response.data));
      return navModel;
    } catch (e) {
      throw Exception(e);
    }
  }
}
