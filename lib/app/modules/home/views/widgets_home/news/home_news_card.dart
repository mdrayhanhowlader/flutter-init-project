import 'package:cms/app/data/constants/extensions/widget_extensions.dart';
import 'package:cms/app/modules/newsDetailsPage/views/news_details_page_view.dart';
import 'package:cms/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Replace with your file path

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 4,
              child: SizedBox(
                height: double.infinity,
                child: Image.asset(
                  "assets/images/cmsteacher.jpg",
                  fit: BoxFit.cover,
                ),
              )),
          Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 15, top: 10),
                child: Column(
                  children: [
                    Title(
                        color: Colors.black,
                        child: const Text(
                          "FESTIVAL SUKAN & KESENIAN ISLAM 2023 YAYASAN ADDIN",
                          style: TextStyle(
                              letterSpacing: 1, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 35,
                    ),
                    const Text(
                      "9 Disember 2023 Bertempat Di Universiti Teknologi Mara Cawangan Seri Iskandar Perak Telah Berlangsungnya Festival Sukan Dan Kesenian Islam 2023 Yayasan ADDIN. Program Yang Melibatkan Kakitangan Ibu P",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const NewsDetailsPageView());
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: const Size(15, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                        child: const Text(
                          "Again",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ).onTap(() {
                        Get.toNamed(Routes.NEWS_DETAILS_PAGE);
                      }),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
