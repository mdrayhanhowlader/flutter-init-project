import 'dart:convert';

import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import '../../models/navigation/navigation_model.dart';

class NavigationRepository {
  final serviceAPI = Get.find<APIService>();

  Future<NavigationModel?> getNavigation() async {
    try {
      print('_working');
      // await Future.delayed(Duration(seconds: 1));
      dio.Response response = await serviceAPI.get(
          fullUrl:
              'https://mobigate.awfatech.com/app_asisv3/list_schselect.php');
      print('reaching api');
      final navigationModel =
          navigationModelFromJson(jsonEncode(response.data));

      return navigationModel;
    } catch (e) {
      throw Exception(e);
    }
  }
}
