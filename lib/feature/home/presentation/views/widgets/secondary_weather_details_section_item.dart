import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_styles.dart';

class SecondaryWeatherDetailsSectionItem extends StatelessWidget {
  const SecondaryWeatherDetailsSectionItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
    required this.iconColor,
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: 22.sp,
              ),
              Text(
                title,
                style: AppStyles.textStyle14.copyWith(
                  color: AppColors.grey50,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            value,
            style: AppStyles.textStyle18.copyWith(letterSpacing: 1.5.sp),
          ),
        ],
      ),
    );
  }
}
