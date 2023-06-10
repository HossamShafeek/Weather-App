
import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/app_colors.dart';

List<Color> changeGradientColorWithOpacity({required String weatherName}) {
  switch (weatherName) {
  // Rain
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Patchy rain possible':
    case 'Light rain shower':
    case 'Light drizzle':
    case 'Patchy light drizzle':
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return AppColors.blueGreyGradientWithOpacity;
  //Cloudy
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
    case 'Mist':
    case 'Fog':
    case 'Thundery outbreaks possible':
      return AppColors.purpleGradientWithOpacity;
  //Freezing - Snow
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Moderate or heavy showers of ice pellets':
    case 'Patchy snow possible':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Light showers of ice pellets':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Freezing fog':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return AppColors.blueGradientWithOpacity;
    default:  return AppColors.orangeGradientWithOpacity;
  }
  // clear - Sunny

}