import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/sign_in/widgets/drop_down.dart';
import 'package:verto_core/view/sign_in/widgets/text_filed.dart';

class SignIN extends StatelessWidget {
  const SignIN({super.key});

  @override
  Widget build(BuildContext context) {
    String value = "male";
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
            reverse: true,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              padding: EdgeInsets.symmetric(vertical: 31.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
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
                      FiledText(
                          controller: TextEditingController(),
                          hint: "ادخل  الاسم",
                          title: "الاسم"),
                      FiledText(
                          controller: TextEditingController(),
                          hint: "ادخل اسم الاب",
                          title: "الاب"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FiledText(
                          controller: TextEditingController(),
                          hint: "ادخل  اسم الجد",
                          title: "الجد"),
                      FiledText(
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
                              fillColor: const MaterialStatePropertyAll(orange),
                              value: "male",
                              groupValue: value,
                              onChanged: (value) {},
                            ),
                            const Text(
                              "ذكر ",
                              style: TextStyle(color: orange),
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
                                const Text("انثى "),
                              ],
                            )
                          ],
                        ),
                        Container(),
                      ],
                    ),
                  ),
                  FiledText(
                    fullSize: true,
                    title: "رقم الجوال",
                    hint: "ادخل رقم الجوال",
                    controller: TextEditingController(),
                  ),
                  FiledText(
                    fullSize: true,
                    title: "رقم الهوية",
                    hint: "ادخل رقم الهوية",
                    controller: TextEditingController(),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.h),
                    child: dropDown(
                        hint: "قم بتحديد الدولة",
                        title: "الدولة",
                        context: context),
                  ),
                  dropDown(
                      hint: "قم بتحديد المحافظة",
                      title: "المحافظة",
                      context: context),
                  Container(
                    margin: EdgeInsets.only(top: 16.h),
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          fillColor: const MaterialStatePropertyAll(textInput),
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.labelMedium,
                            children: const [
                              TextSpan(
                                  text: 'الموافقة على',
                                  style: TextStyle(color: rich)),
                              TextSpan(
                                text: ' سياسة والشروط الاستخدام',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h, bottom: 7.h),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("انشاء حساب"),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.labelMedium,
                      children: const [
                        TextSpan(
                          text: 'لدي حساب؟ ',
                        ),
                        TextSpan(
                          text: "تسجيل الدخول",
                          style: TextStyle(
                            color: orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
