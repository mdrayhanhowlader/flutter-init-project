import 'package:cms/app/data/repositories/user/user_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:cms/app/data/models/user/user_model.dart';

class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  Rx<UserModel?> userModel = Rx<UserModel?>(null);

  @override
  void onInit() {
    fetchUser();
    super.onInit();
  }

  void fetchUser() async {
    try {
      UserModel? user = await _userRepository.getUser();
      userModel.value = user;
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching user data: $e');
      }
    }
  }
}
