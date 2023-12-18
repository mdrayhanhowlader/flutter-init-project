import 'package:flutter/material.dart';
import 'package:cms/app/data/constants/responsive_constant.dart';
// import 'package:webasisadmin/app/data/constants/responsive_constant.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  ResponsiveLayout(
      {required this.mobile, required this.tablet, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < ResponsiveConstants.mobileWidth) {
          return mobile;
        } else if (constraints.maxWidth < ResponsiveConstants.tabletWidth) {
          return tablet;
        } else {
          return desktop;
        }

        // return desktop;
      },
    );
  }
}
