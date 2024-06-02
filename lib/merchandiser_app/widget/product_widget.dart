import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductWidget extends StatelessWidget {
  final void Function()? onTapAdd;
  final void Function()? onTapRemove;
  const ProductWidget({
    Key? key,
    this.onTapAdd,
    this.onTapRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 364.w,
      height: 62.h,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
          color: const Color(0xffEEEEEE),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          Image.asset(
            "assets/png/original 1.png",
            height: 60.h,
            width: 55.w,
          ),
          Text(
            "pringles chips 200g bbq ",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                color: const Color(0xff7B7878)),
          ),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20.r),
                child: Container(
                  height: 30.h,
                  width: 30.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.add),
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                "1",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                ),
              ),
              SizedBox(width: 10.w),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20.r),
                child: Container(
                  height: 30.h,
                  width: 30.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.remove),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
