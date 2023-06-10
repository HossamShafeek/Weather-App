import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';

abstract class WeatherState {
  const WeatherState();
}

class WeatherByCityNameInitialState extends WeatherState {}

class WeatherByCityNameLoadingState extends WeatherState {}

class WeatherByCityNameSuccessState extends WeatherState {
  final WeatherModel weatherModel;

  const WeatherByCityNameSuccessState(this.weatherModel);
}

class WeatherByCityNameFailureState extends WeatherState {
  final String error;

  const WeatherByCityNameFailureState(this.error);
}


class WeatherByUserLocationLoadingState extends WeatherState {}

class WeatherByUserLocationSuccessState extends WeatherState {
  final WeatherModel weatherModel;

  const WeatherByUserLocationSuccessState(this.weatherModel);
}

class WeatherByUserLocationFailureState extends WeatherState {
  final String error;

  const WeatherByUserLocationFailureState(this.error);
}
