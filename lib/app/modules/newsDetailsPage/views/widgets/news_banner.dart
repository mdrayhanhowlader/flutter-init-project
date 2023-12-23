import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsBanner extends StatelessWidget {
  const NewsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Container(
        width: Get.width * 0.8,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/news_image.jpg',
                fit: BoxFit.cover,
                height: Get.height,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: Get.width * 0.8,
              alignment: Alignment.center,
              child: const Text(
                  'Ustaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guestsUstaz Haji Mohd Sabri Bin Nordin also gave a brief explanation about Maahad Tahfiz ADDIN to the guests'),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: Get.width * 0.8,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/news_image.jpg',
                fit: BoxFit.cover,
                height: Get.height,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: Get.width * 0.8,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/news_image.jpg',
                        fit: BoxFit.cover,
                        height: Get.height,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 6,
                    child: Container(
                      width: Get.width,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/news_image.jpg',
                        fit: BoxFit.cover,
                        height: Get.height,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
