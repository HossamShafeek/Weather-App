import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/config/routes/app_routes.dart';
import 'package:weather_app/core/animations/scale_transition_animation.dart';
import 'package:weather_app/core/animations/slide_transition_animation.dart';
import 'package:weather_app/core/functions/change_gradient_color.dart';
import 'package:weather_app/core/functions/change_gradient_color_with_opacity.dart';
import 'package:weather_app/core/functions/change_weather_icon.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/core/widgets/gradient_container_widget.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';

class WeatherForFourCitiesItem extends StatelessWidget {
  const WeatherForFourCitiesItem({
    Key? key,
    required this.weatherModel,
  }) : super(key: key);
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ScaleTransitionAnimation(
        duration: const Duration(milliseconds: 1500),
        child: GradientContainerWidget(
          margin: EdgeInsets.only(top: AppConstants.defaultPadding),
          colors: changeGradientColorWithOpacity(
            weatherName: weatherModel.current!.condition!.text!,
          ),
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          radius: 20.h,
          child: InkWell(
            borderRadius: BorderRadius.circular(20.h),
            onTap: () {
              Navigator.pushNamed(
                context,
                Routes.detailsView,
                arguments: ScreenArguments(
                  weatherModel: weatherModel,
                ),
              );
            },
            child: GradientContainerWidget(
              margin: EdgeInsets.all(2.5.h),
              padding: EdgeInsets.only(left: 10.h),
              radius: 20.h,
              colors: changeGradientColor(
                weatherName: weatherModel.current!.condition!.text!,
              ),
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          weatherModel.location!.name!,
                          style: AppStyles.textStyle25,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          weatherModel.current!.condition!.text!,
                          style: AppStyles.textStyle16,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          '${weatherModel.current!.tempC!.toInt()}°',
                          style: AppStyles.textStyle40,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SlideTransitionAnimation(
                      begin: const Offset(2, 0),
                      end: Offset.zero,
                      curve: Curves.elasticInOut,
                      duration: const Duration(milliseconds: 2000),
                      child: Image.asset(
                        '${AppConstants.path}/${changeWeatherIcon(weatherName: weatherModel.current!.condition!.text!)}.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
