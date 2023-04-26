import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/data/models/report_model.dart';
import 'package:verto_core/main.dart';
import 'package:verto_core/view/main/controller.dart';

class ReportPie extends StatelessWidget {
  ReportPie({super.key});
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  controller.pageController.previousPage(
                    duration: const Duration(
                      seconds: 1,
                    ),
                    curve: Curves.ease,
                  );
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: hint,
                ),
              ),
              Stack(
                children: [
                  SizedBox(
                    width: 200.w,
                    height: 200.h,
                    child: SfCircularChart(
                      series: <CircularSeries>[
                        DoughnutSeries<GDPData, String>(
                          innerRadius: "70%",
                          dataSource: controller.category,
                          xValueMapper: (GDPData data, _) => data.name,
                          yValueMapper: (GDPData data, _) => data.value,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    bottom: 0,
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
              IconButton(
                onPressed: () {
                  controller.pageController.nextPage(
                    duration: const Duration(
                      seconds: 1,
                    ),
                    curve: Curves.ease,
                  );
                },
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
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.h),
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
                                appImages.svg.payout,
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
                                style: Theme.of(context).textTheme.bodySmall,
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
    );
  }
}
