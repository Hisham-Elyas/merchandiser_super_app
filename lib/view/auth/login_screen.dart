import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:merchandiser_super_app/view/widgets/custom_buttom_widget.dart';

import '../../constant/app_color.dart';
import '../home/home_screen.dart';
import '../widgets/custom_textform_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: AppColor.mainColor,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: 545.w,
                height: 0.55.sh,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(35.r)),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/background_img.png"),
                      fit: BoxFit.cover,
                    )),
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      width: 346.h,
                      height: 591.h,
                      padding: EdgeInsets.all(25.w).copyWith(bottom: 0),
                      decoration: BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.circular(30.r)),
                      child: Column(
                        children: [
                          Image.asset(
                              "assets/images/ideas_and_concepts_img.png"),
                          SizedBox(height: 59.h),
                          CustomTextFormField(
                            labelText: "Username",
                            onSaved: (value) {},
                            validator: (value) {
                              return null;
                            },
                          ),
                          SizedBox(height: 29.h),
                          CustomTextFormField(
                            labelText: "Password",
                            onSaved: (value) {},
                            validator: (value) {
                              return null;
                            },
                          ),
                          SizedBox(height: 51.h),
                          CustomButtom(
                            titel: "LOGIN",
                            onTap: () {
                              Get.to(() => const HomeScreen());
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
