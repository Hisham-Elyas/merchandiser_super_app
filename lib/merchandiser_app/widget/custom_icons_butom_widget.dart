import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconsButom extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  final String titel;
  const CustomIconsButom({
    Key? key,
    this.onTap,
    required this.icon,
    required this.titel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(5.r),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40.dm,
          ),
          Text(
            titel,
            style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
