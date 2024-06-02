import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../home/home_screen.dart';

class CoustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> globalkey;
  const CoustomAppBar({super.key, required this.globalkey});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: InkWell(
          onTap: () {
            globalkey.currentState!.openDrawer();
          },
          child: Image.asset("assets/images/leading_icon.png")),
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: InkWell(
            onTap: () {
              Get.offAll(() => const HomeScreen());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 35.dm,
                ),
                Text("Home",
                    style: TextStyle(
                        color: AppColor.fontWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 10.sp))
              ],
            ),
          ),
        )
      ],
      backgroundColor: AppColor.mainColor,
    );
  }

  @override
  Size get preferredSize => Size(double.maxFinite, 60.h);
}
