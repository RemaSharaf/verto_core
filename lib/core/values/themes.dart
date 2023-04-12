import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:verto_core/core/values/colors.dart';

ThemeData themes() {
  return ThemeData(
    fontFamily: "FFShamelFamily",
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: orange,
        )),
    textTheme: const TextTheme(
      labelLarge: TextStyle(color: star),
      bodyMedium: TextStyle(
        color: text,
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
      fillColor: textInput,
      hintStyle: TextStyle(
        color: hint,
        fontWeight: FontWeight.w400,
        fontSize: 11.sp,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll(TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.sp,
        )),
        minimumSize: MaterialStatePropertyAll(Size(295.w, 48.h)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          orange,
        ),
      ),
    ),
  );
}
