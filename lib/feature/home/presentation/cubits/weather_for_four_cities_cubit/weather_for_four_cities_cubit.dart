import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/core/errors/failures.dart';
import 'package:weather/core/utils/app_constants.dart';
import 'package:weather/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather/feature/home/data/repository/home_repository.dart';
import 'package:weather/feature/home/presentation/cubits/weather_for_four_cities_cubit/weather_for_four_cities_state.dart';

class WeatherForFourCitiesCubit extends Cubit<WeatherForFourCitiesState> {
  WeatherForFourCitiesCubit(this.homeRepository)
      : super(WeatherForFourCitiesInitialState());

  final HomeRepository homeRepository;

  static WeatherForFourCitiesCubit get(context) => BlocProvider.of(context);

  Future<void> fetchWeatherForRainCity() async {
    emit(WeatherForRainCityLoadingState());
    Either<Failure, List<WeatherModel>> result =
        await homeRepository.fetchWeatherForFortyCity(
      weatherCitiesName: AppConstants.weatherCitiesName,
    );
    result.fold((failure) {
      emit(WeatherForRainCityFailureState(failure.error));
    }, (listOfWeatherForFortyCity) {
      List<WeatherModel> rainCities = [];
      for (var weather in listOfWeatherForFortyCity) {
        if (weather.current!.condition!.text!.toLowerCase().contains('rain')  ||
            weather.current!.condition!.text!.toLowerCase().contains('light drizzle')
                ) {
          if(!weather.current!.condition!.text!.contains('freezing')){
            rainCities.add(weather);
          }
        }
      }
      emit(WeatherForRainCitySuccessState(rainCities[0]));
    });
  }

  Future<void> fetchWeatherForSunnyCity() async {
    emit(WeatherForSunnyCityLoadingState());
    Either<Failure, List<WeatherModel>> result =
        await homeRepository.fetchWeatherForFortyCity(
      weatherCitiesName: AppConstants.weatherCitiesName,
    );
    result.fold((failure) {
      emit(WeatherForSunnyCityFailureState(failure.error));
    }, (listOfWeatherForFortyCity) {
      List<WeatherModel> sunnyCities = [];
      for (var weather in listOfWeatherForFortyCity) {
        if (weather.current!.condition!.text!.toLowerCase().contains('clear')   ||
            weather.current!.condition!.text!.toLowerCase().contains('sunny') ) {
          sunnyCities.add(weather);
        }
      }
      emit(WeatherForSunnyCitySuccessState(sunnyCities[0]));
    });
  }

  Future<void> fetchWeatherForCloudyCity() async {
    emit(WeatherForCloudyCityLoadingState());
    Either<Failure, List<WeatherModel>> result =
        await homeRepository.fetchWeatherForFortyCity(
      weatherCitiesName: AppConstants.weatherCitiesName,
    );
    result.fold((failure) {
      emit(WeatherForCloudyCityFailureState(failure.error));
    }, (listOfWeatherForFortyCity) {
      List<WeatherModel> cloudyCities = [];
      for (var weather in listOfWeatherForFortyCity) {
        if (weather.current!.condition!.text!.toLowerCase().contains('cloudy')  ||
            weather.current!.condition!.text!.toLowerCase().contains('overcast')  ||
            weather.current!.condition!.text!.toLowerCase().contains('mist')  ||
            weather.current!.condition!.text!.toLowerCase()=='fog'  ||
            weather.current!.condition!.text!.toLowerCase().contains('outbreaks') ) {
          cloudyCities.add(weather);
        }
      }
      emit(WeatherForCloudyCitySuccessState(cloudyCities[0]));
    });
  }

  Future<void> fetchWeatherForSnowCity() async {
    emit(WeatherForSnowCityLoadingState());
    Either<Failure, List<WeatherModel>> result =
        await homeRepository.fetchWeatherForFortyCity(
      weatherCitiesName: AppConstants.weatherCitiesName,
    );
    result.fold((failure) {
      emit(WeatherForSnowCityFailureState(failure.error));
    }, (listOfWeatherForFortyCity) {
      List<WeatherModel> snowCities = [];
      for (var weather in listOfWeatherForFortyCity) {
        if (weather.current!.condition!.text!.toLowerCase().contains('snow')  ||
            weather.current!.condition!.text!.toLowerCase().contains('ice')  ||
            weather.current!.condition!.text!.toLowerCase().contains('blizzard')  ||
            weather.current!.condition!.text!.toLowerCase().contains('freezing')  ||
            weather.current!.condition!.text!.toLowerCase().contains('sleet') ) {
          snowCities.add(weather);
        }
      }
      emit(WeatherForSnowCitySuccessState(snowCities[0]));
    });
  }
}
