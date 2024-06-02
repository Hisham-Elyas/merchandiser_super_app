import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../constant/app_color.dart';
import '../model/offer_model.dart';
import '../view/OFFERS/confirm_offers_screen.dart';
import '../view/OFFERS/offers_screen.dart';

class OffersController extends GetxController {
  final GlobalKey<FormState> offersformKey = GlobalKey();
  final List<String> categoryItems = [
    "Category 1 ",
    "Category 2 ",
    "Category 3 ",
  ];
  final List<String> shelfItems = [
    "Shelf 1",
    "Shelf 2",
    "Shelf 3",
  ];
  String? shelfValue;
  String? categoryValue;
  final List<OfferModel> offersList = [];
  OfferModel offersItem = OfferModel();
  set setShelfValue(String? value) {
    shelfValue = value;
    update();
  }

  set setCategoryValue(String? value) {
    categoryValue = value;
    update();
  }

  String? productValidator(String? val) {
    if (val!.isEmpty) {
      return "Type your product Name";
    } else {
      return null;
    }
  }

  String? priceValidator(String? val) {
    if (val!.isEmpty) {
      return "Type your product price ";
    } else {
      return null;
    }
  }

  String? derailsValidator(String? val) {
    if (val!.isEmpty) {
      return "Type your product derails";
    } else {
      return null;
    }
  }

  void pickedImagebottomSheet() {
    Get.bottomSheet(Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        color: Theme.of(Get.context!).colorScheme.surface,
      ),
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "choose Image From",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
          ),
          ListTile(
            onTap: () {
              pickImage(imageSource: ImageSource.camera);
              Get.close(1);
            },
            leading: const Icon(Icons.camera),
            title: Text(
              "Camera",
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              pickImage(imageSource: ImageSource.gallery);

              Get.close(1);
            },
            leading: const Icon(Icons.image),
            title: Text(
              'Gallery',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(Get.context!).textTheme.bodyLarge!.color),
            ),
          ),
        ],
      ),
    ));
  }

  File? imgPickt;
  Future pickImage({required ImageSource imageSource}) async {
    Get.focusScope!.unfocus();
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(source: imageSource);
    if (pickedImage == null) {
      return;
    }
    final File pickedImageFile =
        File(pickedImage.path); // requires import 'dart:io'
    // final picktImg = await picker.pickImage(source: ImageSource.camera);

    imgPickt = pickedImageFile;
    update();
  }

  Future<void> viewOffers() async {
    if (offersList.isEmpty) {
      showCustomSnackBar(
          message: "You must add one Proudct at least ", isError: true);
    } else {
      Get.focusScope!.unfocus();
      submitAddAnotherProduct();
      Get.to(() => const ConfirmOffersScreen());
    }
  }

  Future<void> submitAddAnotherProduct() async {
    final bool isSuccess = await submit();
    if (isSuccess) {
      offersformKey.currentState!.reset();
      shelfValue = null;
      categoryValue = null;
      imgPickt = null;
      update();
    }
  }

  Future<bool> submit() async {
    if (!offersformKey.currentState!.validate()) {
      // Invalid!
      return false;
    } else if (shelfValue == null || categoryValue == null) {
      // show erorr
      log(" erorr");
      showCustomSnackBar(
          message: "You must choose Sheif And Category", isError: true);
      return false;
    } else if (imgPickt == null) {
      showCustomSnackBar(message: "You must picker Image ", isError: true);
      return false;
    }
    offersformKey.currentState!.save();
    log(offersItem
        .copyWith(sheif: shelfValue, category: categoryValue, imgFile: imgPickt)
        .toString());
    offersList.add(offersItem.copyWith(
        sheif: shelfValue, category: categoryValue, imgFile: imgPickt));
    offersformKey.currentState!.reset();
    shelfValue = null;
    categoryValue = null;
    imgPickt = null;
    update();
    return true;
  }
}

void showCustomSnackBar(
    {required String message,
    bool isError = false,
    String? title,
    void Function(GetSnackBar)? onTap}) {
  Get.closeAllSnackbars();
  Get.snackbar(
    title ?? "Errors",
    message,
    onTap: onTap,
    titleText:
        Text(title ?? "Errors", style: const TextStyle(color: Colors.white)),
    messageText: Text(message, style: const TextStyle(color: Colors.white)),
    colorText: Colors.white,
    snackPosition: SnackPosition.TOP,
    backgroundColor: isError ? const Color(0xffcf6679) : AppColor.mainColor,
  );
}
