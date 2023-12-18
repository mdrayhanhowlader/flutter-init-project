import 'package:cms/app/data/constants/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class HomeNewsCard extends StatelessWidget {
  const HomeNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 4,
              child: Container(
                height: double.infinity,
                child: MouseRegion(
                  child: Image.asset(
                    "assets/images/cmsteacher.jpg",
                    fit: BoxFit.cover,
                  ),
                  onEnter: (_) {
                    opacity(opacity: 0.1);
                  },
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
                        onPressed: () {},
                        child: Text(
                          "Lagi",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: Size(30, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0))),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
