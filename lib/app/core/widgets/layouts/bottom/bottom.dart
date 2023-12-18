import 'package:cms/app/core/widgets/common_bottom_navigation_bar/bottom_navigation.dart';
import 'package:flutter/material.dart';

class LayoutBottom extends StatelessWidget {
  const LayoutBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: const BottomNavigation(),
    );
  }
}
