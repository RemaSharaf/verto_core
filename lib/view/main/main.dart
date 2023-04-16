import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:verto_core/view/home/home.dart';
import 'package:verto_core/view/main/controller.dart';

class Main extends StatelessWidget {
  Main({super.key});
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() => IndexedStack(
                  index: controller.tabIndex.value,
                  children: const [
                    Home(),
                    Text("data"),
                  ],
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          controller.changeTab(value);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monitor_heart_outlined),
          ),
        ],
        currentIndex: controller.tabIndex.value,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
