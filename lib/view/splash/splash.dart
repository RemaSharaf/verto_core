import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:verto_core/main.dart';
import 'package:verto_core/view/main/controller.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140.w,
                  height: 105.h,
                  child: Image.asset(
                    appImages.png.group,
                    // fit: ,
                    width: 140.w,
                    height: 105.h,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
