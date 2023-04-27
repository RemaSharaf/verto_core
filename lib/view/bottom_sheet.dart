import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bottomSheet({required Widget widget, required icon, required context}) {
  // Get.bottomSheet(
  //   ListView(
  //     shrinkWrap: true,
  //     children: [
  //       Container(
  //         margin: EdgeInsets.only(bottom: 17.h),
  //         child: icon,
  //       ),
  //       Center(
  //           child: Container(
  //               padding: EdgeInsets.symmetric(horizontal: 15.w), child: widget))
  //     ],
  //   ),
  //   backgroundColor: Colors.white,
  //   shape: const RoundedRectangleBorder(
  //     borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(50),
  //       topRight: Radius.circular(50),
  //     ),
  //   ),
  // );

  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
    ),
    context: context,
    builder: (context) {
      return Stack(
        children: [
          ListView(
            shrinkWrap: true,
            children: [
              Container(
                // height: 250,
                width: double.infinity,
                margin: EdgeInsets.only(top: 35.h),
                child: Container(
                    padding: EdgeInsets.only(top: 60.h),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Center(
                        child: Column(
                      children: [
                        widget,
                      ],
                    ))),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(child: Container(child: icon)),
          )
        ],
      );
    },
  );
}
