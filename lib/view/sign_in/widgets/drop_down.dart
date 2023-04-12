import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget dropDown(
    {required String title, required String hint, required context}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 16.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(title),
            Text(
              "*",
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
        FormBuilderDropdown<String>(
            name: "",
            hint: Text(
              hint,
              style: Theme.of(context).inputDecorationTheme.hintStyle,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            borderRadius: BorderRadius.circular(15),
            onChanged: (String? value) {},
            icon: const Icon(
              Icons.keyboard_arrow_down,
            ),
            items: []),
      ],
    ),
  );
}
