import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/home/widgets/notification.dart';
import 'package:verto_core/view/main/controller.dart';

class AnimatedBottomNavigation extends GetView<HomeController> {
  const AnimatedBottomNavigation({super.key});

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
          bottomNavigationBar: AnimatedBottomNavigationBar(
            icons: controller.icons,
            activeIndex: controller.tabIndex.value,
            onTap: (p0) {
              controller.tabIndex.value = p0;
            },
            backgroundColor: Colors.white,
            activeColor: orange,
            inactiveColor: hint,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.smoothEdge,
          ),
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
