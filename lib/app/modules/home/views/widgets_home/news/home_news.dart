import 'package:cms/app/modules/home/views/widgets_home/news/home_news_ad.dart';
import 'package:cms/app/modules/home/views/widgets_home/news/home_news_card.dart';
import 'package:flutter/material.dart';

class HomeNews extends StatelessWidget {
  const HomeNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Expanded(
                // card area
                flex: 7,
                child: HomeNewsCard()),
            Expanded(
              flex: 3,
              child: HomeNewsAd(),
            ),
          ],
        ),
      ),
    );
  }
}


