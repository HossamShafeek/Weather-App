import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:weather_app/core/utils/app_colors.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    Key? key,
    this.spacing,
    this.radius,
    this.dotWidth,
    this.dotHeight,
    this.dotColor,
    this.activeDotColor,
    required this.pageController,
    required this.count,
  }) : super(key: key);

  final double? spacing, radius, dotWidth, dotHeight;
  final Color? dotColor, activeDotColor;
  final PageController pageController;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SmoothPageIndicator(
        controller: pageController,
        count: count,
        effect: WormEffect(
          spacing: spacing ?? 8.h,
          radius: radius ?? 10.h,
          dotWidth: dotWidth ?? 12.h,
          dotHeight: dotHeight ?? 12.h,
          dotColor: dotColor ?? AppColors.grey50,
          activeDotColor: activeDotColor ?? AppColors.blueAccent,
        ),
      );
    });
  }
}
