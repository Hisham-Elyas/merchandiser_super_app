import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../constant/app_color.dart';
import '../widgets/coustom_floating_buttom.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_searchbar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> globalkey = GlobalKey();

    return Scaffold(
      key: globalkey,
      drawer: const CustomDrawer(),
      appBar: CoustomAppBar(globalkey: globalkey),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                "Schedule",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
              ),
            ),
            SizedBox(height: 10.h),

            ///  list Of Week widget
            const ScheduleWidget(),
            SizedBox(height: 16.h),

            ///   Search Bar
            CustomSearchBar(
              height: 45.h,
            ),
            SizedBox(height: 5.h),

            /// Card Widget
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.only(bottom: 100.h, top: 29.h),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 29,
                    crossAxisSpacing: 29),
                itemCount: 8,
                itemBuilder: (context, index) => CardWidget(
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: CustomFloatingActionButton(
        onTap: () {},
      ),
    );
  }
}

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> listOfWeek = [
      "Sun",
      "Mon",
      "Tue",
      "Wed",
      "Thu",
      "Fri",
      "Sat",
    ];
    listOfWeek.map((e) {});
    int tapNum = 0;
    for (var i = 0; i < listOfWeek.length; i++) {
      if (listOfWeek[i] == Jiffy.now().E) {
        tapNum = i;
      }
    }
    return StatefulBuilder(
      builder: (context, setState) => SizedBox(
        height: 34.h,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
                  borderRadius: BorderRadius.circular(10.r),
                  onTap: () {
                    setState(() {});
                    tapNum = index;
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 600),
                    width: 50.w,
                    height: 34.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: index == tapNum ? AppColor.mainColor : null),
                    child: Text(
                      listOfWeek[index],
                      style: TextStyle(
                          color: index == tapNum
                              ? AppColor.fontWhite
                              : Jiffy.now()
                                      .add(days: index)
                                      .isBefore(Jiffy.now().add(days: -1))
                                  ? AppColor.fontRed
                                  : null,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp),
                    ),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(width: 15.w),
            itemCount: listOfWeek.length),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final Function()? onTap;
  const CardWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(21.r),
      child: Container(
        height: 172.h,
        width: 164.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(21.r)),
        child: Material(
          borderRadius: BorderRadius.circular(21.r),
          elevation: 10,
          color: const Color(0xffF6F6F6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lulu Alkhubar",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14.sp),
              ),
              SizedBox(height: 22.h),
              Container(
                  padding: EdgeInsets.all(6.dm),
                  decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset("assets/images/market_img.png"))
            ],
          ),
        ),
      ),
    );
  }
}
