import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_color.dart';

class CustomButtom extends StatelessWidget {
  final void Function()? onTap;
  final String titel;
  final bool isOutLine;

  const CustomButtom({
    Key? key,
    this.onTap,
    required this.titel,
    this.isOutLine = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 283.w,
        height: 53.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: isOutLine
                ? Border.all(color: const Color(0xff000000), width: 1)
                : null,
            color: isOutLine ? null : AppColor.mainColor),
        child: Text(
          titel,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28.sp,
              color: isOutLine
                  ? const Color(0xff000000)
                  : const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
