import 'package:cms/app/data/models/web_nav/web_nav_model.dart';
import 'package:cms/app/data/repositories/web_nav/web_nav_repo.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class WebNavController extends GetxController {
  final NavRepository _navRepository = NavRepository();
  Rx<NavModel?> navModel = Rx<NavModel?>(null);
  final isNavLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchNav();
  }

  void fetchNav() async {
    try {
      isNavLoading(true);
      NavModel? nav = await _navRepository.getNav();
      navModel.value = nav;
      isNavLoading(false);
    } catch (e) {
      isNavLoading(false);
      if (kDebugMode) {
        print('Error fetching nav data: $e');
      }
    }
  }
}
