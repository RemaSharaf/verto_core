import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/main/controller.dart';

class Home extends GetView<HomeController> {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              color: orange,
              height: 300.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
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
                      Container(
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
                        child: Center(
                          child: Stack(
                            children: [
                              Container(
                                width: 5.w,
                                height: 5.h,
                                decoration: const BoxDecoration(
                                  color: star,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const Icon(
                                Icons.notifications_outlined,
                              ),
                            ],
                          ),
                        ),
                      ),
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
                                style: Theme.of(context).textTheme.titleLarge,
                                text: "40.3555 ",
                              ),
                              TextSpan(
                                text: "YER",
                                style: Theme.of(context).textTheme.titleSmall,
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
            ),
          ),
          Positioned(
            top: 225,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 19.h, bottom: 16.h),
                      width: 64.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: text,
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
                      height: 150.h,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 60.w,
                          crossAxisSpacing: 24,
                        ),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: 62,
                                height: 62,
                                decoration: BoxDecoration(
                                  color: orange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/Vector.svg"),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
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
