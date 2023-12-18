import 'package:flutter/material.dart';

class HomeNewsAd extends StatelessWidget {
  const HomeNewsAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/cmsinfaq_pembinan.jpg'),
        const SizedBox(height: 5),
        Image.asset("assets/images/cmssecara.png")
      ],
    );
  }
}
