import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),
      body: Obx(() {
        if (controller.userModel.value == null ||
            controller.userModel.value!.data == null) {
          return const Center(child: CircularProgressIndicator());
        } else {
          final data = controller.userModel.value!.data!;
          return Column(
            children: [
              // Text('Encrypted Key: ${data.encryptedKey ?? ''}'),
              Text('Server ID: ${data.serverId ?? ''}'),
              Text('SID: ${data.sid ?? ''}'),
              Text('Tel: ${data.clientTel ?? ''}'),
              Text('Address: ${data.clientAddress ?? ''}'),
              // Display other fields as needed
            ],
          );
        }
      }),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/user_controller.dart';

// class UserView extends GetView<UserController> {
//   const UserView({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('User Details')),
//       body: Obx(() {
//         if (controller.userModel.value == null ||
//             controller.userModel.value!.data == null ||
//             controller.userModel.value!.data!.isEmpty) {
//           return const Center(child: CircularProgressIndicator());
//         } else {
//           final dataList = controller.userModel.value!.data!; // List<Datum>
//           return ListView.builder(
//             itemCount: dataList.length,
//             itemBuilder: (context, index) {
//               final data = dataList[index]; // Get individual Datum object
//               return Column(
//                 children: [
//                   Text('Server ID: ${data.contentTit ?? ''}'),
//                   Text('SID: ${data.contentSubtitle ?? ''}'),
//                   // Display other fields as needed
//                 ],
//               );
//             },
//           );
//         }
//       }),
//     );
//   }
// }
