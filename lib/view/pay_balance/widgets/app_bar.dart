import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:verto_core/core/values/colors.dart';

Widget appBar({required String title, context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 24.w,
        height: 24.h,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 15,
            )),
      ),
      Text(
        "سداد رصيد",
        style: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      Container(
        width: 30.w,
        height: 30.h,
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2), shape: BoxShape.circle),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
          child: const Icon(
            Icons.question_mark,
            size: 15,
          ),
        ),
      ),
    ],
  );
}
