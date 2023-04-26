import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:verto_core/core/values/colors.dart';
import 'package:verto_core/main.dart';
import 'package:verto_core/view/pay_balance/widgets/app_bar.dart';
import 'package:verto_core/view/sign_in/widgets/drop_down.dart';
import 'package:verto_core/view/sign_in/widgets/text_filed.dart';

class PayBalance extends StatelessWidget {
  const PayBalance({super.key});

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
                      child: Image.asset(appImages.png.rectangle)),
                  FiledText(
                    fullSize: true,
                    title: "رقم الجوال",
                    hint: "ادخل رقم الجوال",
                    controller: TextEditingController(),
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
                    margin: EdgeInsets.symmetric(vertical: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: const MaterialStatePropertyAll(orange),
                              value: "invoice",
                              groupValue: value,
                              onChanged: (value) {},
                            ),
                            const Text(
                              "فاتورة ",
                              style: TextStyle(color: orange),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: "دفع مسبق",
                                  groupValue: value,
                                  onChanged: (value) {},
                                ),
                                const Text("دفع مسبق"),
                              ],
                            )
                          ],
                        ),
                        Container(),
                      ],
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
                    margin: EdgeInsets.only(top: 11.h),
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
