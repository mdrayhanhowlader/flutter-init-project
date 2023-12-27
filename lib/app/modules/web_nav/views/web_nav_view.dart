import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/web_nav_controller.dart';

class WebNavView extends GetView<WebNavController> {
  const WebNavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebNavView'),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isNavLoading.isTrue) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          final data = controller.navModel.value!.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final item = data[index];
              return ListTile(
                title: Text(item.menuTit ?? ''),
                subtitle: item.menuLink != null
                    ? Text(item.menuLink!)
                    : const SizedBox(),
                // Add more Widgets here to display other data fields as needed
              );
            },
          );
        }
      }),
    );
  }
}
