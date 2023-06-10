import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class CustomDividerWidget extends StatelessWidget {
  const CustomDividerWidget({
    Key? key,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  final double? width, height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 1.w,
      height: height ?? 40.h,
      color: color ?? AppColors.grey.withOpacity(0.3),
    );
  }
}
