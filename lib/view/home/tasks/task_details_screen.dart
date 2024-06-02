import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/app_color.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_buttom_widget.dart';
import '../../widgets/custom_drawer.dart';

class TaskDetailsScreen extends StatelessWidget {
  const TaskDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> globalkey = GlobalKey();
    return Scaffold(
      appBar: CoustomAppBar(globalkey: globalkey),
      key: globalkey,
      drawer: const CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),

        ///  Task Details
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(11.r),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
                decoration: BoxDecoration(
                    color: AppColor.backgroundColor,
                    border: Border.all(width: 1.w),
                    borderRadius: BorderRadius.circular(11.r)),
                child: Column(
                  children: [
                    titleAndDetalis(
                        title: "Branch", detalis: "59 - AL OTHAIM MALL"),
                    myDivider(),
                    titleAndDetalis(title: "Market", detalis: "Al Othaim"),
                    myDivider(),
                    titleAndDetalis(title: "Task", detalis: "Availability"),
                    myDivider(),
                    titleAndDetalis(title: "Order By", detalis: "Ahmed"),
                    myDivider(),
                    titleAndDetalis(title: "Task Date", detalis: "2024-05-15"),
                    myDivider(),
                    titleAndDetalis(title: "Merchandisers", detalis: "Fares"),
                    myDivider(),
                    titleAndDetalis(
                        title: "Selected Place", detalis: "All Places"),
                    myDivider(),
                    titleAndDetalis(
                        title: "Description",
                        detalis:
                            "disappear path me shaking remarkable drawn lie news job breakfast struggle same rod fur over leg year none itself got iron composed rock ring"),
                  ],
                ),
              ),
            ),
            CustomButtom(
              titel: "Download",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

Widget myDivider() {
  return Divider(
    thickness: 1.5,
    height: 35.h,
    color: const Color(0xff000000),
  );
}

Widget titleAndDetalis({required title, required detalis}) {
  return SizedBox(
    // height: 44.h,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp)),
        SizedBox(width: 15.w),
        SizedBox(
          width: 200.w,
          child: Text(detalis,
              softWrap: true,
              style: TextStyle(
                  color: AppColor.fontgrey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp)),
        ),
      ],
    ),
  );
}
