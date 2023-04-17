import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

bottomSheet({required Widget widget, required icon}) {
  Get.bottomSheet(
      ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 17.h),
            child: icon,
          ),
          Center(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: widget))
        ],
      ),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))));
}
