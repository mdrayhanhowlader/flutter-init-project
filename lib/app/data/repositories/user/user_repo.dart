import 'package:cms/app/core/services/http_services/http_services.dart';
import 'package:cms/app/data/models/user/user_model.dart';
import 'package:get/get.dart';

class UserRepository {
  final serviceApi = Get.find<APIService>();

  Future<UserModel?> getUser() async {
    try {} catch (e) {
      throw Exception(e);
    }
  }
}
