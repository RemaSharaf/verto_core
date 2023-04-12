import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FiledText extends StatelessWidget {
  const FiledText(
      {super.key,
      required this.title,
      required this.hint,
      required this.controller,
      this.fullSize = false});
  final title;
  final hint;
  final controller;
  final fullSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 17.h),
      padding: EdgeInsets.symmetric(horizontal: fullSize ? 16.w : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
              ),
              Text(
                "*",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          SizedBox(
            width: fullSize ? 295.w : 148.w,
            height: 44.h,
            child: FormBuilderTextField(
              name: "",
              controller: controller,
              decoration: InputDecoration(
                hintText: hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
