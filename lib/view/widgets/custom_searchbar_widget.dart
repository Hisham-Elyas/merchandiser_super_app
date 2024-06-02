import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  final double? width;
  final double? height;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final TextEditingController? controller;
  const CustomSearchBar({
    super.key,
    this.width,
    this.height,
    this.onChanged,
    this.onSubmitted,
    this.controller,
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
        decoration: BoxDecoration(
            color: const Color(0xffEAE9E9),
            borderRadius: BorderRadius.all(Radius.circular(10.r))),
        child: TextField(
            controller: controller,
            onChanged: onChanged,
            onSubmitted: onSubmitted,
            decoration: InputDecoration(
              hintText: "Search...",
              hintStyle:
                  TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
              prefixIcon: const Icon(Icons.search_sharp),
              border: InputBorder.none,
            )),
      ),
    );
  }
}
