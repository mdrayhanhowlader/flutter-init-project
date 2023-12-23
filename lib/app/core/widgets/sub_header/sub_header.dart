import 'package:cms/app/data/constants/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: Get.width,
      decoration: BoxDecoration(color: ColorConstant.scaffoldLight),
      alignment: Alignment.center,
      child: SizedBox(
        width: Get.width * 0.8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'MAIN',
                  style: TextStyle(
                      color: Colors.green.shade800,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  ':',
                  style: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'NEWS TITLE',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Share:'),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook_outlined),
                  color: Colors.blue.shade600,
                ),
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const FaIcon(FontAwesomeIcons.whatsapp),
                  color: Colors.green.shade400,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
