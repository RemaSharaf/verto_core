import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIN extends StatelessWidget {
  const SignIN({super.key});

  @override
  Widget build(BuildContext context) {
    String value = "male";
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          padding: EdgeInsets.symmetric(vertical: 31.h),
          child: ListView(shrinkWrap: true, children: [
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: 22.h),
                    child: Image.asset("assets/images/Group.png")),
                Container(
                  margin: EdgeInsets.only(bottom: 15.h),
                  child: Text(
                    "انشاء حساب",
                    style: TextStyle(fontSize: 18.sp),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textFiled(
                        controller: TextEditingController(),
                        hint: "ادخل  الاسم",
                        title: "الاسم"),
                    textFiled(
                        controller: TextEditingController(),
                        hint: "ادخل اسم الاب",
                        title: "الاب"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    textFiled(
                        controller: TextEditingController(),
                        hint: "ادخل  اسم الجد",
                        title: "الجد"),
                    textFiled(
                        controller: TextEditingController(),
                        hint: "ادخل لقب",
                        title: "اللقب"),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            fillColor:
                                MaterialStatePropertyAll(Color(0xffF58042)),
                            value: "male",
                            groupValue: value,
                            onChanged: (value) {},
                          ),
                          const Text(
                            "ذكر ",
                            style: TextStyle(color: Color(0xffF58042)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: "female",
                                groupValue: value,
                                onChanged: (value) {},
                              ),
                              Text("انثى "),
                            ],
                          )
                        ],
                      ),
                      Container(),
                    ],
                  ),
                ),
                textFiled(
                  fullSize: true,
                  title: "رقم الجوال",
                  hint: "ادخل رقم الجوال",
                  controller: TextEditingController(),
                ),
                textFiled(
                  fullSize: true,
                  title: "رقم الهوية",
                  hint: "ادخل رقم الهوية",
                  controller: TextEditingController(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  child: dropDown(hint: "قم بتحديد الدولة", title: "الدولة"),
                ),
                dropDown(hint: "قم بتحديد المحافظة", title: "المحافظة"),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 11.0.sp,
                      color: const Color(0xff20225C),
                      fontFamily: "FFShamelFamily",
                    ),
                    children: const [
                      TextSpan(
                          text: 'الموافقة على',
                          style: TextStyle(color: Color(0xffACACAC))),
                      TextSpan(
                        text: ' سياسة والشروط الاستخدام',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.h, bottom: 7.h),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("انشاء حساب"),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 11.0.sp,
                      color: const Color(0xff20225C),
                      fontFamily: "FFShamelFamily",
                    ),
                    children: const [
                      TextSpan(
                        text: 'لدي حساب؟ ',
                      ),
                      TextSpan(
                        text: "تسجيل الدخول",
                        style: TextStyle(
                          color: Color(0xffF58042),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}

Widget textFiled(
    {required String title,
    required String hint,
    required TextEditingController controller,
    bool fullSize = false}) {
  return Container(
    margin: EdgeInsets.only(top: 17.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        SizedBox(
          width: fullSize ? 295.w : 148.w,
          height: 44.h,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: hint),
          ),
        ),
      ],
    ),
  );
}

Widget dropDown({required String title, required String hint}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        DropdownButtonFormField<String>(
            hint: Text(
              hint,
              style: TextStyle(
                color: const Color(0xff8E8E9380),
                fontSize: 13.sp,
              ),
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            borderRadius: BorderRadius.circular(15),
            onChanged: (String? value) {},
            icon: Icon(
              Icons.keyboard_arrow_down,
              color: const Color(0xff8E8E93),
              size: 26.w,
            ),
            items: []),
      ],
    ),
  );
}
