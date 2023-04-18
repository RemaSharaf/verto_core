import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/main/controller.dart';

class Main extends GetView<HomeController> {
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          Obx(() => IndexedStack(
              index: controller.tabIndex.value,
              children: controller.widgets
                  .map((e) => Container(
                        child: e["Widget"],
                      ))
                  .toList())),
          bottomNavigation()
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: orange,
        child: const Icon(Icons.apps),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget bottomNavigation() {
  int index;
  final controller = Get.find<HomeController>();
  return Positioned(
    bottom: 0,
    left: 0,
    right: 0,
    child: Container(
      height: 53.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
                // homeCtrl.widgets
                //     .map(
                //       (e) => IconButton(onPressed: () {}, icon: Icon(e["icon"])),
                //     )
                //     .toList()
                [
              IconButton(
                onPressed: () {
                  index = 0;
                  controller.changeTab(index);
                },
                icon: Icon(
                  Icons.home,
                  color: controller.tabIndex == 0 ? orange : hint,
                ),
              ),
              IconButton(
                onPressed: () {
                  index = 1;
                  controller.changeTab(index);
                },
                icon: Icon(
                  Icons.heart_broken_outlined,
                  color: controller.tabIndex == 1 ? orange : hint,
                ),
              ),
              IconButton(
                onPressed: () {
                  index = 2;
                  controller.changeTab(index);
                },
                icon: Icon(
                  Icons.pie_chart_outline,
                  color: controller.tabIndex == 2 ? orange : hint,
                ),
              ),
              IconButton(
                onPressed: () {
                  index = 3;
                  controller.changeTab(index);
                },
                icon: Icon(Icons.person_outline,
                    color: controller.tabIndex == 3 ? orange : hint),
              ),
            ],
          )),
    ),
  );
}

// Widget iconBottom(int index, controller, Title) {
//   return IconButton(
//     onPressed: () {
//       controller.changeTab(index);
//     },
//     icon: Row(
//       children: [
//         Icon(
//           Icons.home,
//           color: controller.tabIndex == index ? orange : hint,
//         ),
//         controller.tabIndex == index ? Text("data") : Container()
//       ],
//     ),
//   );
// }
