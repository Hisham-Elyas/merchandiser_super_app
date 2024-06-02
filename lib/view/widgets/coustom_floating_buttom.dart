import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant/app_color.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final void Function() onTap;
  const CustomFloatingActionButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.mainColor,
      radius: 30.r,
      child: InkWell(
        onTap: onTap,
        child: Icon(
          Icons.add,
          color: AppColor.backgroundColor,
          size: 30.dm,
        ),
      ),
    );
  }
}
