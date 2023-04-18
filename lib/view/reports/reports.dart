import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/home/widgets/eye.dart';
import 'package:verto_core/view/main/controller.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(left: 22.w),
            child: notification(),
          )
        ],
        backgroundColor: orange,
        centerTitle: true,
        title: const Text(
          "تقارير وعمليات",
        ),
      ),
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: ListView(
          children: [
            Material(
              child: TabBar(
                padding: EdgeInsets.only(
                  top: 30.h,
                  left: 70.w,
                  right: 70.w,
                  bottom: 20.h,
                ),
                tabs: const [
                  Tab(
                    child: Text("العمليات"),
                  ),
                  Tab(
                    child: Text("تقارير"),
                  ),
                ],
                unselectedLabelColor: hint,
                indicator: RectangularIndicator(
                  color: text,
                  verticalPadding: 7,
                  horizontalPadding: 5,
                  bottomLeftRadius: 50,
                  bottomRightRadius: 50,
                  topLeftRadius: 50,
                  topRightRadius: 50,
                ),
              ),
            ),
            SizedBox(
              height: 150.h,
              width: 150.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: hint,
                    ),
                  ),
                  SizedBox(
                    width: 200.w,
                    height: 200.h,
                    child: Stack(
                      children: [
                        CustomPaint(
                          foregroundPainter: PieChartPainter(),
                          child: Container(),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "اليوم",
                              ),
                              Text(
                                "  4555.33 ر.ي ",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: hint,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: background,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              margin: EdgeInsets.symmetric(vertical: 30.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("الخدمات"),
                      Text("4555.33  ر.ي"),
                    ],
                  ),
                  ListView.builder(
                    padding: EdgeInsets.only(top: 13.h),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 7.h),
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  padding: const EdgeInsets.all(12),
                                  width: 40.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.yellow[700],
                                  ),
                                  child: SvgPicture.asset(
                                    "assets/images/payout.svg",
                                  ),
                                ),
                                const Text(
                                  "سحب نقدي",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Text(
                                  "+ 20.456 ر.ي",
                                  style: TextStyle(color: Colors.green),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  child: Text(
                                    "20 مارس",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PieChartPainter extends CustomPainter {
  final homeCtrl = Get.find<HomeController>();

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 3, size.height / 2);
    double total = 0;
    double startRadian = -pi / 2;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 25;
    homeCtrl.category.forEach((f) => total += f['amount']);
    for (var i = 0; i < homeCtrl.category.length; i++) {
      final currentCategory = homeCtrl.category[i];
      final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
      paint.color = homeCtrl.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
