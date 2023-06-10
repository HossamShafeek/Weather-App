import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/functions/change_weather_icon.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/feature/home/data/models/weather_model/hour.dart';

class WeatherEveryHourListViewItem extends StatelessWidget {
  const WeatherEveryHourListViewItem({Key? key, required this.hour})
      : super(key: key);

  final Hour hour;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          DateFormat.jm().format(DateTime.parse(hour.time!)),
          style: AppStyles.textStyle14,
        ),
        Image.asset(
          '${AppConstants.path}/${changeWeatherIcon(weatherName: hour.condition!.text!)}.png',
          width: 40.w,
          height: 40.w,
        ),
        Text(
          '${hour.tempC!.toInt()}°',
          style: AppStyles.textStyle20,
        ),
      ],
    );
  }
}
