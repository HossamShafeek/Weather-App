import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/config/icons/icons_broken.dart';
import 'package:weather/core/utils/app_colors.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return  IconButton(
      icon: Icon(
        IconBroken.Arrow___Left_2,
        size: 28.sp,
        color: color??AppColors.white,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
