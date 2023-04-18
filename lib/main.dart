import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:verto_core/view/home/home.dart';
import 'package:verto_core/view/main/binding.dart';
import 'package:verto_core/view/main/main.dart';
import 'package:verto_core/view/sign_in/sign_in.dart';
import 'package:verto_core/core/values/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: themes(),
        locale: const Locale("ar"),
        initialBinding: HomeBinding(),
        home: Main(),
      ),
    );
  }
}
