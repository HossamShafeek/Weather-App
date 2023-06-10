import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/core/utils/app_assets.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/core/widgets/app_bar_widget.dart';
import 'package:weather_app/core/widgets/gradient_container_widget.dart';

class DetailsErrorWidget extends StatelessWidget {
  const DetailsErrorWidget({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
      colors: AppColors.redGradient,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          AppBarWidget(
            title: Text(
              'Opps!',
              style: AppStyles.textStyle25,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppConstants.defaultPadding,
              vertical: 60.h,
            ),
            child: Center(
              child: Column(
                children: [
                  Lottie.asset(
                    AppAssets.errorCloud,
                    width: 230.w,
                    height: 210.h,
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Text(
                    error,
                    textAlign: TextAlign.center,
                    style: AppStyles.textStyle25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
