import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/home/widgets/notification.dart';
import 'package:verto_core/view/main/controller.dart';

class Main extends GetView<HomeController> {
  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            actions: controller.tabIndex.value == 2
                ? [
                    Container(
                      margin: EdgeInsets.only(left: 22.w),
                      child: notification(),
                    )
                  ]
                : [],
            backgroundColor:
                controller.tabIndex.value == 2 ? orange : Colors.transparent,
            centerTitle: true,
            title: controller.tabIndex.value == 2
                ? const Text(
                    "تقارير وعمليات",
                  )
                : Container(),
          ),
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              IndexedStack(
                  index: controller.tabIndex.value,
                  children: controller.widgets
                      .map((e) => Container(
                            child: e["Widget"],
                          ))
                      .toList()),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              selectedLabelStyle: TextStyle(
                color: orange,
                fontSize: 12.sp,
              ),
              onTap: (value) {
                controller.tabIndex.value = value;
              },
              items: controller.widgets
                  .map(
                    (e) => BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      label: e["title"],
                      icon: Icon(
                        e["icon"],
                        color: controller.tabIndex.value == e["id"]
                            ? orange
                            : hint,
                      ),
                    ),
                  )
                  .toList()),
          floatingActionButton: FloatingActionButton(
            backgroundColor: orange,
            child: const Icon(Icons.apps),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}

// Widget bottomNavigation() {
//   int index;
//   final controller = Get.find<HomeController>();
//   return Positioned(
//     bottom: 0,
//     left: 0,
//     right: 0,
//     child: Container(
//         height: 53.h,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.white,
//         ),
//         child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: controller.widgets
//                 .map(
//                   (e) => IconButton(
//                     onPressed: () {
//                       controller.changeTab(e["id"]);
//                     },
//                     icon: Icon(
//                       e["icon"],
//                       color:
//                           controller.tabIndex.value == e["id"] ? orange : hint,
//                     ),
//                   ),
//                 )
//                 .toList()
         
//             )),
//   );
// }

