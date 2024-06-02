// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_color.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_dropdown_button_widget.dart';
import '../../widget/custom_icons_butom_widget.dart';
import '../../widget/custom_searchbar_widget.dart';
import '../../widget/product_widget.dart';

class RtvSectionScreen extends StatelessWidget {
  const RtvSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.mainColor,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 25.h),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// Search bar
                        CustomSearchBar(
                          width: 281.w,
                          height: 45.h,
                          onChanged: (value) {},
                          onSubmitted: (value) {},
                        ),

                        /// Scan Barcode
                        CustomIconsButom(
                          icon: Icons.qr_code_scanner_outlined,
                          titel: "Scan Barcode",
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),

                  ///  Filter
                  Container(
                    height: 280.h,
                    width: 378.w,
                    margin: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.w),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(children: [
                      Text("Filter",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 28.sp)),
                      SizedBox(height: 12.h),

                      /// Shelve DropdownButton
                      CustomDropdownButton(
                        onChanged: (value) {},
                        onTap: () {},
                        hintText: "Shelve",
                        items: [
                          DropdownMenuItem(
                              value: "1",
                              child: Text("1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                          DropdownMenuItem(
                              value: "2",
                              child: Text("2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      /// Category DropdownButton
                      CustomDropdownButton(
                        onChanged: (value) {},
                        onTap: () {},
                        hintText: "Category",
                        items: [
                          DropdownMenuItem(
                              value: "1",
                              child: Text("1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                          DropdownMenuItem(
                              value: "2",
                              child: Text("2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      /// Product DropdownButton
                      CustomDropdownButton(
                        onChanged: (value) {},
                        onTap: () {},
                        hintText: "Product",
                        items: [
                          DropdownMenuItem(
                              value: "1",
                              child: Text("1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                          DropdownMenuItem(
                              value: "2",
                              child: Text("2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      /// RTV Type DropdownButton
                      CustomDropdownButton(
                        onChanged: (value) {},
                        onTap: () {},
                        hintText: "RTV Type",
                        items: [
                          DropdownMenuItem(
                              value: "1",
                              child: Text("1",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                          DropdownMenuItem(
                              value: "2",
                              child: Text("2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp))),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(height: 14.h),

                  /// itmes
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 8.h),
                      itemCount: 13,
                      itemBuilder: (context, index) => ProductWidget(
                        onTapAdd: () {},
                        onTapRemove: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ///  Confirm Buttom
            Positioned(
              bottom: 40,
              left: 53,
              right: 53,
              child: CustomButtom(
                titel: "Confirm",
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
