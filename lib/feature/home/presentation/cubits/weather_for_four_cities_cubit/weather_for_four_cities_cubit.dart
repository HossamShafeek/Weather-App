import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/core/utils/app_constants.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather_app/feature/home/data/repository/home_repository.dart';
import 'package:weather_app/feature/home/presentation/cubits/weather_for_four_cities_cubit/weather_for_four_cities_state.dart';

class WeatherForFourCitiesCubit extends Cubit<WeatherForFourCitiesState> {
  WeatherForFourCitiesCubit(this.homeRepository)
      : super(WeatherForFourCitiesInitialState());

  final HomeRepository homeRepository;

  static WeatherForFourCitiesCubit get(context)=>BlocProvider.of(context);

  Future<void> fetchWeatherForRainCity() async {
    emit(WeatherForRainCityLoadingState());
    Either<Failure, WeatherModel> result =
        await homeRepository.fetchWeatherByWeatherName(
      weatherCitiesName: AppConstants.rainWeatherCitiesName,
      weatherNameOne: 'rain',
          weatherNameTwo: 'light drizzle'
    );
    result.fold((failure) {
      emit(WeatherForRainCityFailureState(failure.error));
    }, (weather) {
      emit(WeatherForRainCitySuccessState(weather));
    });
  }

  Future<void> fetchWeatherForSunnyCity() async {
    emit(WeatherForSunnyCityLoadingState());
    Either<Failure, WeatherModel> result =
        await homeRepository.fetchWeatherByWeatherName(
      weatherCitiesName: AppConstants.sunnyWeatherCitiesName,
      weatherNameOne: 'sunny',
          weatherNameTwo: 'clear'
    );
    result.fold((failure) {
      emit(WeatherForSunnyCityFailureState(failure.error));
    }, (weather) {
      emit(WeatherForSunnyCitySuccessState(weather));
    });
  }

  Future<void> fetchWeatherForCloudyCity() async {
    emit(WeatherForCloudyCityLoadingState());
    Either<Failure, WeatherModel> result =
        await homeRepository.fetchWeatherByMultipleWeatherName(
      weatherCitiesName: AppConstants.cloudyWeatherCitiesName,
      weatherNameOne: 'cloudy',
          weatherNameTwo: 'overcast',
          weatherNameThree: 'mist',
          weatherNameFour: 'fog',
          weatherNameFive: 'thundery outbreaks possible',
    );
    result.fold((failure) {
      emit(WeatherForCloudyCityFailureState(failure.error));
    }, (weather) {
      emit(WeatherForCloudyCitySuccessState(weather));
    });
  }

  Future<void> fetchWeatherForSnowCity() async {
    emit(WeatherForSnowCityLoadingState());
    Either<Failure, WeatherModel> result =
    await homeRepository.fetchWeatherByMultipleWeatherName(
      weatherCitiesName: AppConstants.snowWeatherCitiesName,
      weatherNameOne: 'snow',
      weatherNameTwo: 'ice',
      weatherNameThree: 'freezing drizzle',
      weatherNameFour: 'showers',
      weatherNameFive: 'sleet',
    );
    result.fold((failure) {
      emit(WeatherForSnowCityFailureState(failure.error));
    }, (weather) {
      emit(WeatherForSnowCitySuccessState(weather));
    });
  }
}
