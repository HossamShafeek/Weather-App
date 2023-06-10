
String changeWeatherIcon({required String weatherName}) {
  switch (weatherName) {
    ///rain
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Light rain shower':
    case 'Light drizzle':
    case 'Patchy light drizzle':
    case 'Patchy rain possible':
      return '8';

    ///Heavy rain
    case 'Heavy rain at times':
    case 'Heavy rain':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
      return '13';

    ///rain with thunder
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
      return '16';
    ///////////////////////////////////////////////////////////////////////////

    ///freezing rain - snow
    case 'Light freezing rain':
    case 'Moderate or heavy freezing rain':
    case 'Light sleet':
    case 'Moderate or heavy sleet':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Moderate or heavy showers of ice pellets':
      return '22';
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
      return '23';
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Blowing snow':
    case 'Blizzard':
    case 'Freezing fog':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
      return '18';
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return '24';
    ///////////////////////////////////////////////////////////////////////////

    //cloudy//
    case 'Partly cloudy':
    case 'Cloudy':
    case 'Overcast':
      return '41';
    case 'Mist':
    case 'Fog':
      return '3';
    case 'Thundery outbreaks possible':
      return '11';
    ///////////////////////////////////////////////////////////////////////////

    //sunny
    case 'Clear':
      return '4';
    // default => sunny
    default:
      return '26';
  }
}
