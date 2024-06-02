import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../constant/app_color.dart';
import '../../widgets/coustom_floating_buttom.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/custom_dropdown_button_widget.dart';
import 'add_task_screen.dart';
import 'task_details_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> globalkey = GlobalKey();
    return Scaffold(
      appBar: CoustomAppBar(globalkey: globalkey),
      key: globalkey,
      drawer: const CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 15.h),
        child: Column(
          children: [
            ///  Filter
            Container(
              height: 232.h,
              width: 378.w,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w),
                  borderRadius: BorderRadius.circular(10.r)),
              child: Column(children: [
                Text("Filter",
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 28.sp)),
                SizedBox(height: 12.h),

                /// Done Task's DropdownButton
                CustomDropdownButton(
                  onChanged: (value) {},
                  onTap: () {},
                  hintText: "Done Task's",
                  items: [
                    DropdownMenuItem(
                        value: 1,
                        child: Text("Done Task's 1",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.sp))),
                    DropdownMenuItem(
                        value: 2,
                        child: Text("Done Task's 2",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.sp))),
                  ],
                ),
                SizedBox(height: 12.h),

                /// RTV Section DropdownButton
                CustomDropdownButton(
                  onChanged: (value) {},
                  onTap: () {},
                  hintText: "RTV Section",
                  items: [
                    DropdownMenuItem(
                        value: 1,
                        child: Text("RTV Section 1",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.sp))),
                    DropdownMenuItem(
                        value: 2,
                        child: Text("RTV Section 2",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.sp))),
                  ],
                ),
                SizedBox(height: 12.h),

                /// Expired DropdownButton
                CustomDropdownButton(
                  onChanged: (value) {},
                  onTap: () {},
                  hintText: "Expired",
                  items: [
                    DropdownMenuItem(
                        value: 1,
                        child: Text("Expired 1",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.sp))),
                    DropdownMenuItem(
                        value: 2,
                        child: Text(" Expired 2",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 14.sp))),
                  ],
                ),
              ]),
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (context, index) => SizedBox(height: 10.h),
                itemBuilder: (context, index) => TaskWidget(
                  onTap: () {
                    Get.to(() => const TaskDetailsScreen());
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onTap: () {
          Get.to(() => const AddTaskScreen());
        },
      ),
    );
  }
}

class TaskWidget extends StatelessWidget {
  final void Function()? onTap;
  const TaskWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      color: AppColor.backgroundColor2,
      borderRadius: BorderRadius.circular(10.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.r),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 15.h),
          height: 82.h,
          width: 364.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleAndDetalis(titel: "Market    : ", detalis: "Al Othaim"),
                  titleAndDetalis(titel: "Merchandisers : ", detalis: "Ahmed"),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleAndDetalis(
                      titel: "Branch : ", detalis: "59 - Al Othaim Mall "),
                  titleAndDetalis(titel: "Date     : ", detalis: "28-5-2024"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row titleAndDetalis({required titel, required detalis}) {
    return Row(
      children: [
        Text(titel,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp)),
        SizedBox(width: 5.w),
        Text(detalis,
            style: TextStyle(
                color: AppColor.fontgrey,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp)),
      ],
    );
  }
}
