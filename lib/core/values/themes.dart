import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:verto_core/core/values/colors.dart';

ThemeData themes() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "FFShamelFamily",
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 16.sp,
          fontFamily: "FFShamelFamily",
        ),
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          systemNavigationBarDividerColor: Colors.black,
          statusBarColor: orange,
        )),
    textTheme: const TextTheme(
        labelLarge: TextStyle(color: star),
        bodyMedium: TextStyle(
          color: text,
        ),
        titleSmall: TextStyle(color: Colors.white),
        titleMedium: TextStyle(color: Colors.white),
        titleLarge: TextStyle(color: Colors.white),
        labelMedium: TextStyle(
          color: orange,
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          color: hint,
          fontSize: 11,
          fontWeight: FontWeight.w300,
        )),
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
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
  );
}
