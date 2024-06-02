import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final double? width;
  final double? height;
  final String? hintText;
  final int? maxLines;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  const CustomTextFormField({
    super.key,
    this.width,
    this.height,
    this.hintText,
    this.maxLines = 1,
    this.validator,
    this.onSaved,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
            color: const Color(0xffF6F6F6),
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: TextFormField(
            keyboardType: keyboardType,
            maxLines: maxLines,
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: const Color(0xff9B9B9B),
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide:
                    const BorderSide(width: 0, color: Color(0xff787878)),
              ),
            )),
      ),
    );
  }
}
