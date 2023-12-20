import 'package:flutter/material.dart';

class BottomTop extends StatelessWidget {
  const BottomTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30, right: 100, bottom: 10, left: 100),
        child: Column(
          children: [
            // top part ---------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: const BoxDecoration(
                        //     border: Border(
                        //         bottom: BorderSide(
                        //   color: Colors.green,
                        //   width: 1.0,
                        // ))
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'ADDRESS:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            height: 2.0, // Adjust the height of the line
                            color: Colors.green,
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const Text(
                                "                    ") // Adjust the margin as needed
                            ),
                        const Text(
                          'Maahad Tahfiz Al Quran ADDIN Perak Education Foundation',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'Level 1 Al Aulia Mosque Education Complex',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'Sin Lok Park, Jalan Kuala Kangsar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          '30010 Ipoh, Perak Darul Ridzuan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                // const SizedBox(width: 200),
                Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CONTACT:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            height: 2.0, // Adjust the height of the line
                            color: Colors.green,
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const Text(
                                "                    ") // Adjust the margin as needed
                            ),
                        const Text(
                          'Phone: 05 5060223',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'Whatsapp: 019 5749612',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )),
                // const SizedBox(width: 200),
                Container(
                    decoration: const BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'VISITORS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            height: 2.0, // Adjust the height of the line
                            color: Colors.green,
                            margin: const EdgeInsets.symmetric(vertical: 20.0),
                            child: const Text(
                                "                    ") // Adjust the margin as needed
                            ),
                        const Row(
                          children: [
                            Text(
                              'Total: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '1615523',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'Today: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '43',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'Yesterday: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '60',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'This Month: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '1473',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Text(
                              'Last Month: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '2528',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
