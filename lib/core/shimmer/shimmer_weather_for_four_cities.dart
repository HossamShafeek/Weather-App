import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/shimmer/shimmer_container_effect.dart';
import 'package:weather_app/core/utils/app_constants.dart';

class ShimmerWeatherForFourCities extends StatelessWidget {
  const ShimmerWeatherForFourCities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ShimmerContainerEffect(
        borderRadius: 20.h,
        margin:EdgeInsets.only(top:AppConstants.defaultPadding),
      ),
    );
  }
}
