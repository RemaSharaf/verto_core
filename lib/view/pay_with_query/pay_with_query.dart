import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/view/pay_balance/widgets/app_bar.dart';
import 'package:verto_core/view/sign_in/widgets/drop_down.dart';
import 'package:verto_core/view/sign_in/widgets/text_filed.dart';

class PayWithQuery extends StatelessWidget {
  const PayWithQuery({super.key});

  @override
  Widget build(BuildContext context) {
    String value = "invoice";
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: orange,
          title: appBar(
            title: "سداد الرصيد",
            context: context,
          ),
          centerTitle: true,
        ),
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
                  Container(
                      margin: EdgeInsets.only(bottom: 22.h),
                      child: Image.asset("assets/images/Rectangle.png")),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 2,
                        child: FiledText(
                          fullSize: true,
                          title: "رقم الجوال",
                          hint: "ادخل رقم الجوال",
                          controller: TextEditingController(),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 42.h,
                          decoration: BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                              child: Text(
                            "استعلام",
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.center,
                          )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        fillColor: const MaterialStatePropertyAll(textInput),
                      ),
                      Text(
                        "حفظ الرقم",
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodySmall!.fontSize,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.w),
                    width: double.infinity,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: textInput,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontWeight: Theme.of(context)
                                  .inputDecorationTheme
                                  .hintStyle!
                                  .fontWeight,
                              color: hint,
                              fontFamily: Theme.of(context)
                                  .inputDecorationTheme
                                  .hintStyle!
                                  .fontFamily),
                          children: const [
                            TextSpan(
                              text: ' الرصيد',
                            ),
                            TextSpan(
                              text: '  77.7',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: FiledText(
                            fullSize: true,
                            controller: TextEditingController(),
                            hint: "ادخل  المبلغ",
                            title: "المبلغ"),
                      ),
                      Expanded(
                        child: dropDown(
                            hint: "حدد العملة",
                            title: "العملة",
                            context: context),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 11.h, bottom: 20.h),
                    child: const Text(
                      "يمكنك تسديد اي مبلغ وليس المبلغ المطلوب",
                      style: TextStyle(
                        color: rich,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h, bottom: 7.h),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("سداد 500  ر.ي"),
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
