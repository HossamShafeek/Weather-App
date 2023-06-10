import 'package:dartz/dartz.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';

abstract class HomeRepository {
  Future<Either<Failure, WeatherModel>> fetchWeatherByCityName({
    required String cityName,
  });

  Future<Either<Failure, WeatherModel>> fetchWeatherByUserLocation({
    required String latitude,
    required String longitude,
  });

  Future<Either<Failure, WeatherModel>> fetchWeatherByWeatherName({
    required List<String> weatherCitiesName,
    required String weatherNameOne,
    required String weatherNameTwo,
  });

  Future<Either<Failure, WeatherModel>> fetchWeatherByMultipleWeatherName({
    required List<String> weatherCitiesName,
    required String weatherNameOne,
    required String weatherNameTwo,
    required String weatherNameThree,
    required String weatherNameFour,
    required String weatherNameFive,
  });
}
