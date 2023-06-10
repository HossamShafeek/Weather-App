import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/core/api/api_services.dart';
import 'package:weather_app/core/api/end_points.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather_app/feature/home/data/repository/home_repository.dart';

class HomeRepositoryImplementation implements HomeRepository {
  final ApiServices apiServices;
  const HomeRepositoryImplementation(this.apiServices);
  @override
  Future<Either<Failure, WeatherModel>> fetchWeatherByCityName(
      {required String cityName}) async {
    try {
      Map<String, dynamic> data = await apiServices.get(
        endPoint: EndPoints.forecast,
        queryParameters: {
          'q': cityName,
          'key': EndPoints.apiKey,
          'days': 7,
        },
      );
      WeatherModel weatherModel = WeatherModel.fromJson(data);
      return Right(weatherModel);
    } catch (error) {
      if (error is DioError) {
        return Left(ServerFailure.fromDioError(error));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, WeatherModel>> fetchWeatherByUserLocation({
    required String latitude,
    required String longitude,
  }) async {
    try {
      Map<String, dynamic> data = await apiServices.get(
        endPoint: EndPoints.forecast,
        queryParameters: {
          'q': '$latitude,$longitude',
          'key': EndPoints.apiKey,
          'days': 7,
        },
      );
      WeatherModel weatherModel = WeatherModel.fromJson(data);
      return Right(weatherModel);
    } catch (error) {
      if (error is DioError) {
        return Left(ServerFailure.fromDioError(error));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, WeatherModel>> fetchWeatherByWeatherName(
      {required List<String> weatherCitiesName,
      required String weatherNameOne,
      required String weatherNameTwo}) async {
    try {
      List<WeatherModel> weatherCities = [];
      for (String cityName in weatherCitiesName) {
        Map<String, dynamic> data = await apiServices.get(
          endPoint: EndPoints.forecast,
          queryParameters: {
            'q': cityName,
            'key': EndPoints.apiKey,
            'days': 7,
          },
        );
        if (data['current']['condition']['text']
                .toString()
                .toLowerCase()
                .contains(weatherNameOne) ||
            data['current']['condition']['text']
                .toString()
                .toLowerCase()
                .contains(weatherNameTwo)) {
          weatherCities.add(WeatherModel.fromJson(data));
        }
      }
      return Right(weatherCities[0]);
    } catch (error) {
      if (error is DioError) {
        return Left(ServerFailure.fromDioError(error));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, WeatherModel>> fetchWeatherByMultipleWeatherName({
    required List<String> weatherCitiesName,
    required String weatherNameOne,
    required String weatherNameTwo,
    required String weatherNameThree,
    required String weatherNameFour,
    required String weatherNameFive,
  }) async {
    try {
      List<WeatherModel> weatherCities = [];
      for (String cityName in weatherCitiesName) {
        Map<String, dynamic> data = await apiServices.get(
          endPoint: EndPoints.forecast,
          queryParameters: {
            'q': cityName,
            'key': EndPoints.apiKey,
            'days': 7,
          },
        );
        if (data['current']['condition']['text']
                .toString()
                .toLowerCase()
                .contains(weatherNameOne) ||
            data['current']['condition']['text']
                .toString()
                .toLowerCase()
                .contains(weatherNameTwo) ||
            data['current']['condition']['text']
                .toString()
                .toLowerCase()
                .contains(weatherNameThree) ||
            data['current']['condition']['text']
                .toString()
                .toLowerCase()
                .contains(weatherNameFour) ||
            data['current']['condition']['text']
                .toString()
                .toLowerCase()
                .contains(weatherNameFive)) {
          weatherCities.add(WeatherModel.fromJson(data));
        }
      }
      return Right(weatherCities[0]);
    } catch (error) {
      if (error is DioError) {
        return Left(ServerFailure.fromDioError(error));
      } else {
        return Left(ServerFailure(error.toString()));
      }
    }
  }
}
