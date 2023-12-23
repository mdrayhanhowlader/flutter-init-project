import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_navigation.dart';
import 'package:cms/app/core/widgets/layouts/top/top.dart';
import 'package:cms/app/core/widgets/sub_header/sub_header.dart';
import 'package:cms/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms/app/modules/newsDetailsPage/views/widgets/news_banner.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/news_details_page_controller.dart';

class NewsDetailsPageView extends GetView<NewsDetailsPageController> {
  const NewsDetailsPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LayoutTop(), // layout top

            const SubHeader(), // sub header
            const SizedBox(
              height: 100,
            ),
            const NewsBanner(),
            Container(
              color: Colors.black,
              child: const BottomNavigation(),
            )
          ],
        ),
      ),
    );
  }
}
