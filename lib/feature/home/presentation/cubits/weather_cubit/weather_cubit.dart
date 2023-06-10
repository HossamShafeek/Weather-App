import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/errors/failures.dart';
import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';
import 'package:weather_app/feature/home/data/repository/home_repository.dart';
import 'package:weather_app/feature/home/presentation/cubits/weather_cubit/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.homeRepository) : super(WeatherByCityNameInitialState());

  final HomeRepository homeRepository;

  static WeatherCubit get(context) => BlocProvider.of(context);

  Future<void> fetchWeatherByCityName({
    required String cityName,
  }) async {
    emit(WeatherByCityNameLoadingState());
    Either<Failure, WeatherModel> result =
        await homeRepository.fetchWeatherByCityName(cityName: cityName);
    result.fold(
      (failure) {
        emit(WeatherByCityNameFailureState(failure.error));
      },
      (weather) {
        emit(WeatherByCityNameSuccessState(weather));
      },
    );
  }

  Future<void> fetchWeatherByUserLocation({
    required String latitude,
    required String longitude,
  }) async {
    emit(WeatherByUserLocationLoadingState());
    Either<Failure, WeatherModel> result =
        await homeRepository.fetchWeatherByUserLocation(
      latitude: latitude,
      longitude: longitude,
    );
    result.fold(
      (failure) {
        emit(WeatherByUserLocationFailureState(failure.error));
      },
      (weather) {
        emit(WeatherByUserLocationSuccessState(weather));
      },
    );
  }
}
