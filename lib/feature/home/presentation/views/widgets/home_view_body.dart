import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/search_text_field.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/weahter_for_four_cities.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppConstants.defaultPadding),
      child: Column(
        children: const [
          SearchTextField(),
          WeatherForFourCities(),
        ],
      ),
    );
  }
}
