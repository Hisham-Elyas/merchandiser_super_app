import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/app_color.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_buttom_widget.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/custom_dropdown_button_widget.dart';
import '../../widgets/custom_searchbar_widget.dart';
import '../../widgets/custom_textform_field.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> globalkey = GlobalKey();
    return Scaffold(
      appBar: CoustomAppBar(globalkey: globalkey),
      key: globalkey,
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),

          /// add Task Details
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(11.r),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
                  decoration: BoxDecoration(
                      color: AppColor.backgroundColor,
                      border: Border.all(width: 1.w),
                      borderRadius: BorderRadius.circular(11.r)),
                  child: Column(
                    children: [
                      Text("RTV TASK",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28.sp)),
                      SizedBox(height: 21.h),
                      const CustomSearchBar(height: 45),
                      SizedBox(height: 12.h),

                      /// Merchandisers DropdownButton
                      CustomDropdownButton(
                        onChanged: (value) {},
                        onTap: () {},
                        hintText: "Merchandisers",
                        items: [
                          DropdownMenuItem(
                              value: 1,
                              child: Text("Merchandisers 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                          DropdownMenuItem(
                              value: 2,
                              child: Text("Merchandisers 2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      /// Market DropdownButton
                      CustomDropdownButton(
                        onChanged: (value) {},
                        onTap: () {},
                        hintText: "Market",
                        items: [
                          DropdownMenuItem(
                              value: 1,
                              child: Text("Market 1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                          DropdownMenuItem(
                              value: 2,
                              child: Text("Market 2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      /// Branch DropdownButton
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDropdownButton(
                            width: 185.w,
                            onChanged: (value) {},
                            onTap: () {},
                            hintText: "Branch",
                            items: [
                              DropdownMenuItem(
                                  value: 1,
                                  child: Text("Branch 1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp))),
                              DropdownMenuItem(
                                  value: 2,
                                  child: Text("Branch 2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp))),
                            ],
                          ),
                          const Spacer(),
                          Text("All Branches",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp)),
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      /// Place DropdownButton
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomDropdownButton(
                            width: 185.w,
                            onChanged: (value) {},
                            onTap: () {},
                            hintText: "Place",
                            items: [
                              DropdownMenuItem(
                                  value: 1,
                                  child: Text("Place 1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp))),
                              DropdownMenuItem(
                                  value: 2,
                                  child: Text("Place 2",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.sp))),
                            ],
                          ),
                          const Spacer(),
                          Text("All Places",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.sp)),
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          )
                        ],
                      ),

                      SizedBox(height: 12.h),
                      //Date
                      InkWell(
                        borderRadius: BorderRadius.circular(11.r),
                        onTap: () {
                          showDatePicker(
                              context: context,
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2025));
                        },
                        child: Material(
                          borderRadius: BorderRadius.circular(11.r),
                          elevation: 15,
                          color: const Color(0xffF6F6F6),
                          child: Container(
                            width: 360.w,
                            height: 44.h,
                            padding: EdgeInsets.symmetric(horizontal: 15.w),
                            decoration: BoxDecoration(
                                color: const Color(0xffF6F6F6),
                                borderRadius: BorderRadius.circular(11.r)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                                const Icon(Icons.calendar_month_outlined)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.h),

                      CustomTextFormField(
                        borderRadius: 11.r,
                        height: 160.h,
                        maxLines: 5,
                        labelText: "Details",
                        onSaved: (value) {},
                        validator: (value) {
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 70.h),
              CustomButtom(
                titel: "Add Task",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
