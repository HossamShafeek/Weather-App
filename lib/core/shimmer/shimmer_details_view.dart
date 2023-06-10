import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/shimmer/shimmer_container_effect.dart';
import 'package:weather_app/core/shimmer/shimmer_details_view_body.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/widgets/app_bar_widget.dart';
import 'package:weather_app/core/widgets/gradient_container_widget.dart';

class ShimmerDetailsView extends StatelessWidget {
  const ShimmerDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientContainerWidget(
      colors: AppColors.backgroundGradient,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          AppBarWidget(
            title: ShimmerContainerEffect(
              width: 130.w,
              height: 15.h,
            ),
          ),
          const ShimmerDetailsViewBody(),
        ],
      ),
    );
  }
}
