import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:verto_core/view/main/binding.dart';
import 'package:verto_core/view/main/main.dart';
import 'package:verto_core/core/values/themes.dart';
import 'package:verto_core/view/pay_with_query/pay_with_query.dart';
import 'package:verto_core/view/pay_balance/pay_balance.dart';

void main() {
  runApp(
    const MyApp(),
    // DevicePreview(
    //   builder: (context) => const MyApp(),
    // ),
  );
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
        home: const PayWithQuery(),
      ),
    );
  }
}
