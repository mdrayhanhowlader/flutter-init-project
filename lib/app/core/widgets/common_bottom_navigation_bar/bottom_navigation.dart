import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_bottom.dart';
import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_top.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BottomTop(),
        SizedBox(
          height: 60,
        ),
        BottomBottom()
      ],
    );
  }
}
