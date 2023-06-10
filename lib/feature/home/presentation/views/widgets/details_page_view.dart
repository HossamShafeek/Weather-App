import 'package:flutter/material.dart';
import 'package:weather_app/core/animations/slide_transition_animation.dart';
import 'package:weather_app/core/functions/change_gradient_color.dart';
import 'package:weather_app/core/utils/app_styles.dart';
import 'package:weather_app/core/widgets/gradient_container_widget.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/basic_weather_details_section.dart';
import 'package:weather_app/core/widgets/app_bar_widget.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/secondary_weather_details_section.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/weather_every_hour_list_view.dart';

class DetailsPageView extends StatelessWidget {
  const DetailsPageView({
    Key? key,
    required this.weatherModel,
    required this.pageController,
  }) : super(key: key);

  final WeatherModel weatherModel;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: weatherModel.forecast!.forecastday!.length,
      itemBuilder: (context, index) {
        return GradientContainerWidget(
          colors: changeGradientColor(
            weatherName: index == 0
                ? weatherModel.current!.condition!.text!
                : weatherModel
                    .forecast!.forecastday![index].day!.condition!.text!,
          ),
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              AppBarWidget(
                title: SlideTransitionAnimation(
                  duration: const Duration(milliseconds:700),
                  begin: const Offset(0.5,0),
                  end: Offset.zero,
                  curve: Curves.easeIn,
                  child: Text(
                    weatherModel.location!.name!,
                    style: AppStyles.textStyle25,
                  ),
                ),
              ),
              BasicWeatherDetailsSection(
                weatherModel: weatherModel,
                index: index,
              ),
              SecondaryWeatherDetailsSection(
                weatherModel: weatherModel,
                index: index,
              ),
              WeatherEveryHourListView(
                weatherModel: weatherModel,
                index: index,
              ),
            ],
          ),
        );
      },
    );
  }
}
