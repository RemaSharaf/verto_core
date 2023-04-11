import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themes() {
  return ThemeData(
    // scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xffF58042),
      onSecondaryContainer: Colors.orange,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Color(0xff20225C),
        fontFamily: "FFShamelFamily",
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 11.h),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      filled: true,
      fillColor: const Color(0xffF8F9FB),
      hintStyle: TextStyle(
          color: const Color(0xff8E8E9380),
          fontWeight: FontWeight.w400,
          fontSize: 13.sp),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
            fontFamily: "FFShamelFamilys")),
        minimumSize: MaterialStatePropertyAll(Size(295.w, 48.h)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color(0xffF58042),
        ),
      ),
    ),
  );
}
