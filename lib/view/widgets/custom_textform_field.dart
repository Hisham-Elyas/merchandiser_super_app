import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final double? width;
  final double? height;
  final String? labelText;
  final int? maxLines;
  final double? borderRadius;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  const CustomTextFormField({
    super.key,
    this.width,
    this.height,
    this.labelText,
    this.maxLines = 1,
    this.validator,
    this.onSaved,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      elevation: 15,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          width: width,
          height: height ?? 60.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            color: const Color(0xffF6F6F6),
          ),
          child: TextFormField(
              maxLines: maxLines,
              onSaved: onSaved,
              validator: validator,
              decoration: InputDecoration(
                labelText: labelText,
                hintStyle: TextStyle(
                    color: const Color(0xff9B9B9B),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp),
                border: InputBorder.none,
              ))),
    );
  }
}
