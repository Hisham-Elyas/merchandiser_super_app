import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddImgBoxWidet extends StatelessWidget {
  final double width;
  final double height;
  final File? imgFile;
  final void Function()? onTap;
  const AddImgBoxWidet(
      {super.key,
      required this.width,
      required this.height,
      this.onTap,
      this.imgFile});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(20.r),
        elevation: 5,
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: onTap,
          child: SizedBox(
            width: width,
            height: height,
            child: imgFile == null
                ? const FittedBox(
                    child: Icon(
                    Icons.add,
                    color: Color(0xFFFFFFFF),
                  ))
                : ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.file(
                      imgFile!,
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ));
  }
}
