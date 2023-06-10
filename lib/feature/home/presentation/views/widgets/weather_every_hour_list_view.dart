import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/core/animations/slide_transition_animation.dart';
import 'package:weather_app/core/utils/app_colors.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/weather_every_hour_list_view_item.dart';

class WeatherEveryHourListView extends StatelessWidget {
  const WeatherEveryHourListView({
    Key? key,
    required this.weatherModel,
    required this.index,
  }) : super(key: key);

  final WeatherModel weatherModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SlideTransitionAnimation(
      duration: const Duration(milliseconds:900),
      begin: const Offset(0.6,0),
      end: Offset.zero,
      curve: Curves.easeIn,
      child: Container(
        margin: EdgeInsets.only(
          bottom: 35.h,
          left: AppConstants.defaultPadding,
          right: AppConstants.defaultPadding,
        ),
        decoration: BoxDecoration(
          color: AppColors.transparentWithOpacity10,
          borderRadius: BorderRadius.circular(20.h),
        ),
        padding: EdgeInsets.all(15.h),
        width: double.infinity,
        height: 115.h,
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: weatherModel.forecast!.forecastday![index].hour!.length,
          itemBuilder: (context, indexForList) => WeatherEveryHourListViewItem(
            hour: weatherModel.forecast!.forecastday![index].hour![indexForList],
          ),
          separatorBuilder: (context, index) => SizedBox(
            width: 13.w,
          ),
        ),
      ),
    );
  }
}
