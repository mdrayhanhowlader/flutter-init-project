import 'dart:convert';

import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:cms/app/data/models/user/user_model.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class UserRepository {
  final serviceApi = Get.find<APIService>();

  Future<UserModel?> getUser() async {
    try {
      if (kDebugMode) {
        print('working user api');
      }
      dio.Response response =
          await serviceApi.post('/api/v2/auth/appcode', {"appcode": "ais"});
      // dio.Response response = await serviceApi
      //     .post('/getNavheader.php', {"sid": "1", "sysapp": "alumni"});
      final userModel = userModelFromJson(jsonEncode(response.data));
      return userModel;
    } catch (e) {
      throw Exception(e);
    }
  }
}
