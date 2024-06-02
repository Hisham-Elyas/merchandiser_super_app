import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:merchandiser_super_app/constant/app_color.dart';

import 'view/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Merchandiser Super App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColor.mainColor),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
        // home: const BranchScreen(),
        // home: const TasksScreen(),
        // home: const AddTaskScreen(),
      ),
    );
  }
}
