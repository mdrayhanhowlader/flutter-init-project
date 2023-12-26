import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_application_controller.dart';

class NewApplicationView extends GetView<NewApplicationController> {
  const NewApplicationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: Get.width,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            width: Get.width,
            decoration: BoxDecoration(color: Colors.blue.shade900),
            child: const Text(
              'APPLICATION INFORMATION ASNAF \nADDIN ZAKAT MANAGEMENT SYSTEM ONLINE SYSTEM',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: Get.width,
            decoration: const BoxDecoration(color: Color(0XFFFCF8E3)),
            child: Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      'ATTENTION!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 5),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            '- Please enter the No. Identification Card (Student) for application or application status check'),
                        Text('- Klik butang SAHKAN untuk pengesahan.'),
                        Text(
                            '- Jika No Kad Pengenalan (pelajar) dimasukkan tidak dijumpai, Butang DAFTAR SEKARANG akan terpapar. Pemohon boleh buat permohonan baru dengan klik butang tersebut.'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: Get.width * 0.6,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Applicant Identification Card Number (Student)',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  style: const TextStyle(
                    fontSize: 5,
                  ),
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0, color: Colors.black54)),
                    // hintText: 'Enter Your ID',
                    // labelText: 'Applicant Identification Card Number (Student)',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2)),
                    backgroundColor: Colors.blue.shade700,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Check'),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
