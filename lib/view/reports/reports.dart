import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/main/controller.dart';
import 'package:verto_core/view/reports/widgets/page_view.dart';

class Reports extends GetView<HomeController> {
  Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: ListView(
          children: [
            Material(
              color: Colors.white,
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
                labelPadding: EdgeInsets.only(top: 5.h),
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
              height: 700.h,
              child: TabBarView(
                children: [
                  const Text("data"),
                  PageView(
                    controller: controller.pageController,
                    onPageChanged: (value) {
                      controller.pageIndex.value = value;
                    },
                    children: [
                      ReportPie(),
                      ReportPie(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class PieChartPainter extends CustomPainter {
//   final homeCtrl = Get.find<HomeController>();

//   @override
//   void paint(Canvas canvas, Size size) {
//     Offset center = Offset(size.width / 2, size.height / 2);
//     double radius = min(size.width / 3, size.height / 2);
//     double total = 0;
//     double startRadian = -pi / 2;
//     var paint = Paint()
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 25;
//     homeCtrl.category.forEach((f) => total += f['amount']);
//     for (var i = 0; i < homeCtrl.category.length; i++) {
//       final currentCategory = homeCtrl.category[i];
//       final sweepRadian = (currentCategory['amount'] / total) * 2 * pi;
//       paint.color = homeCtrl.pieColors[i];
//       canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
//           startRadian, sweepRadian, false, paint);
//       startRadian += sweepRadian;
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }

