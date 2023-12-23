import 'package:cms/app/data/models/navigation/navigation_model.dart';
import 'package:cms/app/data/repositories/navigation/navigation_repo.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final isNavigationLoading = false.obs;
  final navigationList = NavigationModel().obs;
  final navigationRepo = NavigationRepository();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getNavigationList();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> getNavigationList() async {
    try {
      print('starts here');
      isNavigationLoading(true);
      navigationList(await navigationRepo.getNavigation());
      isNavigationLoading(false);
    } catch (e) {
      isNavigationLoading(false);
      throw Exception(e);
    }
  }
}
