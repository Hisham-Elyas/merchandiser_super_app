// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../app_color.dart';
import '../../controller/offers_controller.dart';
import '../../model/offer_model.dart';
import '../../widget/add_imgbox_widget.dart';
import '../../widget/custom_buttom_widget.dart';

class ConfirmOffersScreen extends StatelessWidget {
  const ConfirmOffersScreen({super.key});

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
        body: GetBuilder<OffersController>(
          builder: (controller) => Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w)
                    .copyWith(top: 15.h, bottom: 10.h),
                child: ListView.separated(
                    padding: EdgeInsets.only(bottom: 80.h),
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 10.h),
                    itemCount: controller.offersList.length,
                    itemBuilder: (context, index) => BoxOffersWidget(
                          offersItem: controller.offersList[index],
                        )),
              ),

              ///  Confirm Buttom
              Positioned(
                left: 53,
                right: 53,
                bottom: 20,
                child: CustomButtom(
                  titel: "Confirm",
                  onTap: () {},
                ),
              )
            ],
          ),
        ));
  }
}

class BoxOffersWidget extends StatelessWidget {
  final OfferModel offersItem;
  const BoxOffersWidget({
    super.key,
    required this.offersItem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 151.h,
      width: 376.w,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1.w),
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AddImgBoxWidet(
            width: 133.w,
            height: 126.h,
            imgFile: offersItem.imgFile,
          ),
          Column(
            children: [
              //// Category
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(11.r),
                child: Container(
                  width: 203.w,
                  height: 36.h,
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsetsDirectional.only(start: 10.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(11.r)),
                  child: Text(
                    "Category : ${offersItem.category}",
                    style: TextStyle(
                        color: const Color(0xff3F3D3D),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(height: 9.h),
              //// Product
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(11.r),
                child: Container(
                  width: 203.w,
                  height: 36.h,
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsetsDirectional.only(start: 10.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(11.r)),
                  child: Text(
                    "Product : ${offersItem.product}",
                    style: TextStyle(
                        color: const Color(0xff3F3D3D),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                ),
              ),
              SizedBox(height: 9.h),
              //// Price
              Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(11.r),
                child: Container(
                  width: 203.w,
                  height: 36.h,
                  alignment: AlignmentDirectional.centerStart,
                  padding: EdgeInsetsDirectional.only(start: 10.w),
                  decoration: BoxDecoration(
                      color: const Color(0xffF6F6F6),
                      borderRadius: BorderRadius.circular(11.r)),
                  child: Text(
                    "Price : : ${offersItem.price}",
                    style: TextStyle(
                        color: const Color(0xff3F3D3D),
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
