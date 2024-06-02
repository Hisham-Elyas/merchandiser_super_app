import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant/app_color.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/custom_drawer.dart';
import '../../widgets/custom_searchbar_widget.dart';

class BranchScreen extends StatelessWidget {
  const BranchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> globalkey = GlobalKey();
    return Scaffold(
        appBar: CoustomAppBar(globalkey: globalkey),
        key: globalkey,
        backgroundColor: AppColor.mainColor,
        drawer: const CustomDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: Column(
            children: [
              ///   Search Bar
              CustomSearchBar(
                height: 45.h,
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ));
  }
}
