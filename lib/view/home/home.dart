import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/main.dart';
import 'package:verto_core/view/bottom_sheet.dart';
import 'package:verto_core/view/home/widgets/notification.dart';
import 'package:verto_core/view/main/controller.dart';

class Home extends GetView<HomeController> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            top: 40.h,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              color: orange,
              height: 300.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 60.h,
                    left: 0,
                    child: CustomPaint(
                      foregroundPainter: PieChartPainter2(),
                      child: const SizedBox(
                        height: 150,
                        width: 150,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 24,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14.w),
                                child: Text(
                                  "مرحبا , روز",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                          notification()
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 18.h, bottom: 3.h),
                        child: Text(
                          "الرصيد",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Row(
                        children: [
                          Localizations.override(
                            context: context,
                            locale: const Locale("en"),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                    text: "40.3555 ",
                                  ),
                                  TextSpan(
                                    text: "YER",
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 15.w),
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
                            child: const Icon(
                              Icons.remove_red_eye_outlined,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 19.h),
                        width: 64.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: text,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 24.h),
                      child: Obx(() => Stack(
                            children: [
                              Positioned(
                                child: CarouselSlider(
                                    items: controller.images
                                        .map(
                                          (e) => ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.asset(
                                              e["image_path"],
                                              fit: BoxFit.cover,
                                              height: 157.h,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                    options: CarouselOptions(
                                      viewportFraction: 1,
                                      autoPlay: true,
                                      aspectRatio: 2,
                                      onPageChanged: (index, reason) {
                                        controller.changeCurrentIndex(index);
                                      },
                                    )),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 0,
                                left: 0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: controller.images
                                      .asMap()
                                      .entries
                                      .map((entry) {
                                    return Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 3.w),
                                      width: 9,
                                      height: 9,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: entry.key ==
                                                  controller.currentIndex.value
                                              ? orange
                                              : circle),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(
                      height: 180.h,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 30.w,
                            crossAxisSpacing: 10),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 5.h),
                                width: 62,
                                height: 62,
                                decoration: BoxDecoration(
                                  color: orange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(appImages.svg.vector),
                                ),
                              ),
                              Text(
                                "حوالات",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 30.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "اخر العمليات",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Text(
                            "عرض الكل",
                            style: Theme.of(context).textTheme.bodySmall,
                          )
                        ],
                      ),
                    ),
                    ListView.builder(
                      padding: EdgeInsets.only(top: 13.h),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            bottomSheet(
                                icon: SvgPicture.asset(
                                  appImages.svg.layer,
                                ),
                                widget: const Text("data"),
                                context: context);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 7.h),
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: hint,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      padding: const EdgeInsets.all(12),
                                      width: 40.w,
                                      height: 40.h,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: orange,
                                      ),
                                      child: SvgPicture.asset(
                                        appImages.svg.payout,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "ارسال حوالة",
                                          style: TextStyle(
                                            color: text,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            const CircleAvatar(
                                              radius: 10,
                                            ),
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5.w),
                                              child: Text(
                                                "الاستاذ محي الدين",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Localizations.override(
                                      context: context,
                                      locale: const Locale("en"),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              style: TextStyle(
                                                  color: green,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.sp),
                                              text: "+ 20.456 ",
                                            ),
                                            TextSpan(
                                                text: "YER",
                                                style: TextStyle(
                                                  color: green,
                                                  fontSize: 14.sp,
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: Text(
                                        "20 مارس",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PieChartPainter2 extends CustomPainter {
  final homeCtrl = Get.find<HomeController>();

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 3, size.height / 20);
    double radius = min(size.width / 3, size.height / 1);
    double startRadian = -pi / 10;
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;
    final sweepRadian = (2 / 5) * 2 * pi;
    paint.color = Colors.white.withOpacity(.2);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian,
        sweepRadian, false, paint);
    // startRadian += sweepRadian;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
