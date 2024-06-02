import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../auth/login_screen.dart';
import '../home/branch/branch_screen.dart';
import '../home/tasks/tasks_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: AlignmentDirectional.topStart,
        child: Container(
          height: 476.h,
          width: 325.w,
          padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 10.w),
          decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              borderRadius: BorderRadius.circular(35.r)
                  .copyWith(topLeft: const Radius.circular(0))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20.h),
              CustomProfileButton(
                title: "Mohamed",
                backgroundImage: 'assets/images/profile_img.png',
                onTap: () {},
              ),
              CustomProfileButton(
                title: "Task's List",
                icon: Icons.edit_document,
                onTap: () {
                  Get.offAll(() => const TasksScreen());
                },
              ),
              CustomProfileButton(
                title: "Merchandisers",
                icon: Icons.person,
                onTap: () {
                  Get.offAll(() => const BranchScreen());
                },
              ),
              CustomProfileButton(
                title: "Language",
                icon: Icons.language,
                onTap: () {},
              ),
              Row(
                children: [
                  Switch(
                    value: false,
                    onChanged: (value) {},
                  ),
                  SizedBox(width: 16.w),
                  Text(
                    "Dark Mode",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              CustomProfileButton(
                title: "Logout",
                icon: Icons.arrow_forward,
                onTap: () {
                  Get.offAll(() => const LoginScreen());
                },
              ),
            ],
          ),
        ));
  }
}

class CustomProfileButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final String? backgroundImage;
  final void Function()? onTap;

  const CustomProfileButton({
    super.key,
    required this.title,
    this.onTap,
    this.icon,
    this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 63.h,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppColor.mainColor,
                  backgroundImage: backgroundImage == null
                      ? null
                      : AssetImage(backgroundImage!),
                  radius: 25.r,
                  child: Icon(
                    icon,
                    color: AppColor.backgroundColor,
                    size: 30.dm,
                  ),
                ),
                SizedBox(width: 16.w),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios, size: 24.dm),
                SizedBox(width: 10.w)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
