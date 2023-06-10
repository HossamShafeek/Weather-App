import 'package:weather_app/feature/home/data/models/weather_model/weather_model.dart';

abstract class WeatherForFourCitiesState {}

class WeatherForFourCitiesInitialState extends WeatherForFourCitiesState {}

class WeatherForRainCityLoadingState extends WeatherForFourCitiesState {}

class WeatherForRainCitySuccessState extends WeatherForFourCitiesState {
  final WeatherModel weatherModel;

  WeatherForRainCitySuccessState(this.weatherModel);
}

class WeatherForRainCityFailureState extends WeatherForFourCitiesState {
  final String error;

  WeatherForRainCityFailureState(this.error);
}

class WeatherForSunnyCityLoadingState extends WeatherForFourCitiesState {}

class WeatherForSunnyCitySuccessState extends WeatherForFourCitiesState {
  final WeatherModel weatherModel;

  WeatherForSunnyCitySuccessState(this.weatherModel);
}

class WeatherForSunnyCityFailureState extends WeatherForFourCitiesState {
  final String error;

  WeatherForSunnyCityFailureState(this.error);
}

class WeatherForCloudyCityLoadingState extends WeatherForFourCitiesState {}

class WeatherForCloudyCitySuccessState extends WeatherForFourCitiesState {
  final WeatherModel weatherModel;

  WeatherForCloudyCitySuccessState(this.weatherModel);
}

class WeatherForCloudyCityFailureState extends WeatherForFourCitiesState {
  final String error;

  WeatherForCloudyCityFailureState(this.error);
}

class WeatherForSnowCityLoadingState extends WeatherForFourCitiesState {}

class WeatherForSnowCitySuccessState extends WeatherForFourCitiesState {
  final WeatherModel weatherModel;

  WeatherForSnowCitySuccessState(this.weatherModel);
}

class WeatherForSnowCityFailureState extends WeatherForFourCitiesState {
  final String error;

  WeatherForSnowCityFailureState(this.error);
}
