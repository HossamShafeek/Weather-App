import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/shimmer/shimmer_circle_avatar_effect.dart';
import 'package:weather_app/core/shimmer/shimmer_container_effect.dart';
import 'package:weather_app/core/utils/app_constants.dart';

class ShimmerDetailsViewBody extends StatelessWidget {
  const ShimmerDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShimmerContainerEffect(
              width: 85.w,
              height: 15.h,
            ),
            ShimmerContainerEffect(
              width: 260.w,
              height: 220.h,
              borderRadius: 20.h,
            ),
            ShimmerContainerEffect(
              width: 50.h,
              height: 50.h,
              borderRadius: 12.h,
            ),
            ShimmerContainerEffect(
              width: 140.w,
              height: 15.h,
            ),
            ShimmerContainerEffect(
              width: double.infinity.w,
              height: 90.h,
              borderRadius: 20.h,
            ),
            ShimmerContainerEffect(
              width: double.infinity.w,
              height: 120.h,
              borderRadius: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [1, 2, 3, 4, 5, 6, 7].map((e) {
                return Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: const ShimmerCircleAvatarEffect(),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
