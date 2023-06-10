import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/core/animations/fade_transition_animation.dart';
import 'package:weather_app/core/animations/slide_transition_animation.dart';
import 'package:weather_app/core/functions/change_weather_icon.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';

class BasicWeatherDetailsSection extends StatelessWidget {
  const BasicWeatherDetailsSection({
    Key? key,
    required this.weatherModel,
    required this.index,
  }) : super(key: key);

  final WeatherModel weatherModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(
          top: AppConstants.defaultPadding,
          left: AppConstants.defaultPadding,
          right: AppConstants.defaultPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat.yMMMd().format(DateTime.parse(
                  weatherModel.forecast!.forecastday![index].date!)),
              style: AppStyles.textStyle16,
            ),
            SlideTransitionAnimation(
              duration: const Duration(milliseconds:900),
              begin: const Offset(0.4,0),
              end: Offset.zero,
              curve: Curves.easeIn,
              child: Image.asset(
                '${AppConstants.path}/${changeWeatherIcon(
                  weatherName: index == 0
                      ? weatherModel.current!.condition!.text!
                      : weatherModel
                          .forecast!.forecastday![index].day!.condition!.text!,
                )}.png',
                width: 260.w,
                height: 220.h,
              ),
            ),
            FadeTransitionAnimation(
              duration: const Duration(milliseconds:1300),
              child: Text(
                index == 0
                    ? '${weatherModel.current!.tempC!.toInt()}°'
                    : '${weatherModel.forecast!.forecastday![index].day!.avgtempC!.toInt()}°',
                style: AppStyles.textStyle40,
              ),
            ),
            SlideTransitionAnimation(
              duration: const Duration(milliseconds:700),
              begin: const Offset(0,-0.5),
              end: Offset.zero,
              curve: Curves.easeIn,
              child: Text(
                index == 0
                    ? weatherModel.current!.condition!.text!
                    : weatherModel
                        .forecast!.forecastday![index].day!.condition!.text!,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.textStyle20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
