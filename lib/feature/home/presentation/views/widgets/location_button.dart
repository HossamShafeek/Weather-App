import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/config/icons/icons_broken.dart';
import 'package:weather_app/config/routes/app_routes.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/core/utils/get_current_location.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right: AppConstants.defaultPadding),
      child: GestureDetector(
        onTap: () {
          LocationService locationService = LocationService();
          locationService.getCurrentLocation().then((location) {
            Navigator.pushNamed(context, Routes.detailsView,
                arguments: ScreenArguments(
                  latitude: location.longitude.toString(),
                  longitude: location.longitude.toString(),
                ));
          });
        },
        child: CircleAvatar(
          radius: 16.h,
          backgroundColor: AppColors.grey50,
          child:  Icon(
            IconBroken.Location,
            color: AppColors.black,
            size: 28.sp,
          ),
        ),
      ),
    );
  }
}