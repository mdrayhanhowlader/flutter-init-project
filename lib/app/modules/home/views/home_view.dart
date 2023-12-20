import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_navigation.dart';
import 'package:cms/app/core/widgets/custom_banner/custom_banner.dart';
import 'package:cms/app/core/widgets/custom_slider/custom_image_slider.dart';
import 'package:cms/app/modules/home/views/widgets_home/hightlight/custom_highlight.dart';
import 'package:cms/app/core/widgets/layouts/top/top.dart';
import 'package:cms/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms/app/modules/home/views/widgets_home/news/home_news.dart';
import 'package:cms/app/modules/home/views/widgets_home/stories/stories.dart';
import 'package:cms/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LayoutTop(), // Navigation Item
            const SizedBox(
              height: 30,
            ),

            const CustomHighlight(), // Marquee Start Text

            const CustomImageSlider(), // Image Slider Banner

            const Stories(), // Top Stories
            const SizedBox(
              height: 50,
            ),

            HomeNews().onTap(() {
              Get.toNamed(Routes.FAQ);
            }), // News or Post Part

            const SizedBox(
              height: 100,
            ),
            const CustomBanner(), // Custom Banner
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: const BottomNavigation(),
            )
          ],
        ),
      ),
    );
  }
}
