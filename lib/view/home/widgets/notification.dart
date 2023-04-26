import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/main.dart';

Widget notification() {
  return Container(
    width: 38.w,
    height: 38.h,
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(.2),
      border: Border.all(
        color: Colors.white,
        width: 1,
      ),
      shape: BoxShape.circle,
    ),
    child: Stack(
      children: [
        Positioned(
          right: 8.w,
          top: 8.h,
          child: Container(
            width: 5.w,
            height: 5.h,
            decoration: const BoxDecoration(
              color: star,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Center(
          child: SvgPicture.asset(
            appImages.svg.notification,
          ),
        ),
      ],
    ),
  );
}
