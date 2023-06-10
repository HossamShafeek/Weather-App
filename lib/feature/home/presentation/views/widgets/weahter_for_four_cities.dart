import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/shimmer/shimmer_weather_for_four_cities.dart';
import 'package:weather_app/core/utils/service_locator.dart';
import 'package:weather_app/core/widgets/custom_error_widget.dart';
import 'package:weather_app/feature/home/data/repository/home_repository_implementation.dart';
import 'package:weather_app/feature/home/presentation/cubits/weather_for_four_cities_cubit/weather_for_four_cities_cubit.dart';
import 'package:weather_app/feature/home/presentation/cubits/weather_for_four_cities_cubit/weather_for_four_cities_state.dart';
import 'package:weather_app/feature/home/presentation/views/widgets/weather_for_four_cities_item.dart';

class WeatherForFourCities extends StatefulWidget {
  const WeatherForFourCities({Key? key}) : super(key: key);

  @override
  State<WeatherForFourCities> createState() => _WeatherForFourCitiesState();
}

class _WeatherForFourCitiesState extends State<WeatherForFourCities> {
  final WeatherForFourCitiesCubit weatherForRainCityCubit =
  WeatherForFourCitiesCubit(getIt.get<HomeRepositoryImplementation>())
    ..fetchWeatherForRainCity();
  final WeatherForFourCitiesCubit weatherForCloudyCityCubit =
  WeatherForFourCitiesCubit(getIt.get<HomeRepositoryImplementation>())
    ..fetchWeatherForCloudyCity();
  final WeatherForFourCitiesCubit weatherForSunnyCityCubit =
  WeatherForFourCitiesCubit(getIt.get<HomeRepositoryImplementation>())
    ..fetchWeatherForSunnyCity();
  final WeatherForFourCitiesCubit weatherForSnowCityCubit =
  WeatherForFourCitiesCubit(getIt.get<HomeRepositoryImplementation>())
    ..fetchWeatherForSnowCity();


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          BlocBuilder<WeatherForFourCitiesCubit, WeatherForFourCitiesState>(
            bloc: weatherForRainCityCubit,
            builder: (context, state) {
              if (state is WeatherForRainCityFailureState) {
                return CustomErrorWidget(
                  error: state.error,
                );
              } else if (state is WeatherForRainCitySuccessState) {
                return WeatherForFourCitiesItem(
                    weatherModel: state.weatherModel);
              } else {
                return const ShimmerWeatherForFourCities();
              }
            },
          ),
          BlocBuilder<WeatherForFourCitiesCubit, WeatherForFourCitiesState>(
            bloc: weatherForCloudyCityCubit,
            builder: (context, state) {
              if (state is WeatherForCloudyCityFailureState) {
                return CustomErrorWidget(
                  error: state.error,
                );
              } else if (state is WeatherForCloudyCitySuccessState) {
                return WeatherForFourCitiesItem(
                    weatherModel: state.weatherModel);
              } else {
                return const ShimmerWeatherForFourCities();
              }
            },
          ),
          BlocBuilder<WeatherForFourCitiesCubit, WeatherForFourCitiesState>(
            bloc: weatherForSunnyCityCubit,
            builder: (context, state) {
              if (state is WeatherForSunnyCityFailureState) {
                return CustomErrorWidget(
                  error: state.error,
                );
              } else if (state is WeatherForSunnyCitySuccessState) {
                return WeatherForFourCitiesItem(
                    weatherModel: state.weatherModel);
              } else {
                return const ShimmerWeatherForFourCities();
              }
            },
          ),
          BlocBuilder<WeatherForFourCitiesCubit, WeatherForFourCitiesState>(
            bloc: weatherForSnowCityCubit,
            builder: (context, state) {
              if (state is WeatherForSnowCityFailureState) {
                return CustomErrorWidget(
                  error: state.error,
                );
              } else if (state is WeatherForSnowCitySuccessState) {
                return WeatherForFourCitiesItem(
                    weatherModel: state.weatherModel);
              } else {
                return const ShimmerWeatherForFourCities();
              }
            },
          ),
        ],
      ),
    );
  }
}
