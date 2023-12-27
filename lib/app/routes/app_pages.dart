import 'package:get/get.dart';

import '../modules/addin_store/bindings/addin_store_binding.dart';
import '../modules/addin_store/views/addin_store_view.dart';
import '../modules/api_handling/bindings/api_handling_binding.dart';
import '../modules/api_handling/views/api_handling_view.dart';
import '../modules/branch/bindings/branch_binding.dart';
import '../modules/branch/views/branch_view.dart';
import '../modules/e-infaq/bindings/e_infaq_binding.dart';
import '../modules/e-infaq/views/e_infaq_view.dart';
import '../modules/faq/bindings/faq_binding.dart';
import '../modules/faq/views/faq_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/info-addin/bindings/info_addin_binding.dart';
import '../modules/info-addin/views/info_addin_view.dart';
import '../modules/new_application/bindings/new_application_binding.dart';
import '../modules/new_application/views/new_application_view.dart';
import '../modules/newsDetailsPage/bindings/news_details_page_binding.dart';
import '../modules/newsDetailsPage/views/news_details_page_view.dart';
import '../modules/user/bindings/user_binding.dart';
import '../modules/user/views/user_view.dart';
import '../modules/web_nav/bindings/web_nav_binding.dart';
import '../modules/web_nav/views/web_nav_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FAQ,
      page: () => const FaqView(),
      binding: FaqBinding(),
    ),
    GetPage(
      name: _Paths.API_HANDLING,
      page: () => ApiHandlingView(),
      binding: ApiHandlingBinding(),
    ),
    GetPage(
      name: _Paths.NEWS_DETAILS_PAGE,
      page: () => const NewsDetailsPageView(),
      binding: NewsDetailsPageBinding(),
    ),
    GetPage(
      name: _Paths.INFO_ADDIN,
      page: () => const InfoAddinView(),
      binding: InfoAddinBinding(),
    ),
    GetPage(
      name: _Paths.BRANCH,
      page: () => const BranchView(),
      binding: BranchBinding(),
    ),
    GetPage(
      name: _Paths.ADDIN_STORE,
      page: () => const AddinStoreView(),
      binding: AddinStoreBinding(),
    ),
    GetPage(
      name: _Paths.NEW_APPLICATION,
      page: () => const NewApplicationView(),
      binding: NewApplicationBinding(),
    ),
    GetPage(
      name: _Paths.E_INFAQ,
      page: () => const EInfaqView(),
      binding: EInfaqBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => const UserView(),
      binding: UserBinding(),
    ),
    GetPage(
      name: _Paths.WEB_NAV,
      page: () => const WebNavView(),
      binding: WebNavBinding(),
    ),
  ];
}
