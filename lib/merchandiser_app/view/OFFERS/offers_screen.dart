import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../app_color.dart';
import '../../controller/offers_controller.dart';
import '../../widget/add_imgbox_widget.dart';
import '../../widget/custom_buttom_widget.dart';
import '../../widget/custom_dropdown_button_widget.dart';
import '../../widget/custom_textfield_widget.dart';
import 'confirm_offers_screen.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OffersController());
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w).copyWith(
            top: 15.h,
            bottom: 10.h,
          ),
          child: GetBuilder<OffersController>(
            builder: (controller) => Form(
              key: controller.offersformKey,
              child: Column(children: [
                /// Shelf DropdownButton
                CustomDropdownButton(
                  value: controller.shelfValue,
                  onChanged: (value) {
                    controller.setShelfValue = value;
                  },
                  hintText: "Shelf",
                  items: [
                    ...controller.shelfItems.map(
                      (e) {
                        return DropdownMenuItem(
                            onTap: () {
                              log(e);
                            },
                            value: e,
                            child: Text(e,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp)));
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.h),

                /// Category DropdownButton
                CustomDropdownButton(
                  value: controller.categoryValue,
                  onChanged: (value) {
                    controller.setCategoryValue = value;
                  },
                  hintText: "Category",
                  items: [
                    ...controller.categoryItems.map(
                      (e) {
                        return DropdownMenuItem(
                            onTap: () {
                              log(e);
                            },
                            value: e,
                            child: Text(e,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp)));
                      },
                    ),
                  ],
                ),

                SizedBox(height: 10.h),

                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextFormField(
                      width: 171.w,
                      height: 49.h,
                      hintText: "Product",
                      onSaved: (value) {
                        controller.offersItem =
                            controller.offersItem.copyWith(product: value);
                      },
                      validator: (val) => controller.priceValidator(val),
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.number,
                      width: 171.w,
                      height: 49.h,
                      hintText: "Price",
                      onSaved: (value) {
                        controller.offersItem =
                            controller.offersItem.copyWith(price: value);
                      },
                      validator: (value) => controller.priceValidator(value),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),

                CustomTextFormField(
                  width: 360.w,
                  height: 70.h,
                  maxLines: 3,
                  hintText: "Details",
                  onSaved: (value) {
                    controller.offersItem =
                        controller.offersItem.copyWith(details: value);
                  },
                  validator: (value) => controller.derailsValidator(value),
                ),
                SizedBox(height: 15.h),
                AddImgBoxWidet(
                  width: 333.w,
                  height: 287.h,
                  imgFile: controller.imgPickt,
                  onTap: () {
                    controller.pickedImagebottomSheet();
                  },
                ),
                SizedBox(height: 20.h),

                //  Add Another Product Buttom
                CustomButtom(
                  isOutLine: true,
                  titel: "Add Another Product",
                  onTap: () {
                    controller.submitAddAnotherProduct();
                  },
                ),
                SizedBox(height: 15.h),
                //  View Offers Buttom
                CustomButtom(
                  titel: "View Offers",
                  onTap: () {
                    controller.viewOffers();
                  },
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
