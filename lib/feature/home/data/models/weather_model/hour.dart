import 'condition.dart';

class Hour {
  final num? timeEpoch;
  final String? time;
  final num? tempC;
  final num? tempF;
  final num? isDay;
  final Condition? condition;
  final num? windMph;
  final num? windKph;
  final num? windDegree;
  final String? windDir;
  final num? pressureMb;
  final num? pressureIn;
  final num? precipMm;
  final num? precipIn;
  final num? humidity;
  final num? cloud;
  final num? feelslikeC;
  final num? feelslikeF;
  final num? windchillC;
  final num? windchillF;
  final num? heatindexC;
  final num? heatindexF;
  final num? dewpointC;
  final num? dewpointF;
  final num? willItRain;
  final num? chanceOfRain;
  final num? willItSnow;
  final num? chanceOfSnow;
  final num? visKm;
  final num? visMiles;
  final num? gustMph;
  final num? gustKph;
  final num? uv;

  const Hour({
    this.timeEpoch,
    this.time,
    this.tempC,
    this.tempF,
    this.isDay,
    this.condition,
    this.windMph,
    this.windKph,
    this.windDegree,
    this.windDir,
    this.pressureMb,
    this.pressureIn,
    this.precipMm,
    this.precipIn,
    this.humidity,
    this.cloud,
    this.feelslikeC,
    this.feelslikeF,
    this.windchillC,
    this.windchillF,
    this.heatindexC,
    this.heatindexF,
    this.dewpointC,
    this.dewpointF,
    this.willItRain,
    this.chanceOfRain,
    this.willItSnow,
    this.chanceOfSnow,
    this.visKm,
    this.visMiles,
    this.gustMph,
    this.gustKph,
    this.uv,
  });

  factory Hour.fromJson(Map<String, dynamic> json) => Hour(
        timeEpoch: json['time_epoch'] as num?,
        time: json['time'] as String?,
        tempC: json['temp_c'] as num?,
        tempF: json['temp_f'] as num?,
        isDay: json['is_day'] as num?,
        condition: json['condition'] == null
            ? null
            : Condition.fromJson(json['condition'] as Map<String, dynamic>),
        windMph: json['wind_mph'] as num?,
        windKph: json['wind_kph'] as num?,
        windDegree: json['wind_degree'] as num?,
        windDir: json['wind_dir'] as String?,
        pressureMb: json['pressure_mb'] as num?,
        pressureIn: json['pressure_in'] as num?,
        precipMm: json['precip_mm'] as num?,
        precipIn: json['precip_in'] as num?,
        humidity: json['humidity'] as num?,
        cloud: json['cloud'] as num?,
        feelslikeC: json['feelslike_c'] as num?,
        feelslikeF: json['feelslike_f'] as num?,
        windchillC: json['windchill_c'] as num?,
        windchillF: json['windchill_f'] as num?,
        heatindexC: json['heatindex_c'] as num?,
        heatindexF: json['heatindex_f'] as num?,
        dewpointC: json['dewpoint_c'] as num?,
        dewpointF: json['dewpoint_f'] as num?,
        willItRain: json['will_it_rain'] as num?,
        chanceOfRain: json['chance_of_rain'] as num?,
        willItSnow: json['will_it_snow'] as num?,
        chanceOfSnow: json['chance_of_snow'] as num?,
        visKm: json['vis_km'] as num?,
        visMiles: json['vis_miles'] as num?,
        gustMph: json['gust_mph'] as num?,
        gustKph: json['gust_kph'] as num?,
        uv: json['uv'] as num?,
      );

  Map<String, dynamic> toJson() => {
        'time_epoch': timeEpoch,
        'time': time,
        'temp_c': tempC,
        'temp_f': tempF,
        'is_day': isDay,
        'condition': condition?.toJson(),
        'wind_mph': windMph,
        'wind_kph': windKph,
        'wind_degree': windDegree,
        'wind_dir': windDir,
        'pressure_mb': pressureMb,
        'pressure_in': pressureIn,
        'precip_mm': precipMm,
        'precip_in': precipIn,
        'humidity': humidity,
        'cloud': cloud,
        'feelslike_c': feelslikeC,
        'feelslike_f': feelslikeF,
        'windchill_c': windchillC,
        'windchill_f': windchillF,
        'heatindex_c': heatindexC,
        'heatindex_f': heatindexF,
        'dewpoint_c': dewpointC,
        'dewpoint_f': dewpointF,
        'will_it_rain': willItRain,
        'chance_of_rain': chanceOfRain,
        'will_it_snow': willItSnow,
        'chance_of_snow': chanceOfSnow,
        'vis_km': visKm,
        'vis_miles': visMiles,
        'gust_mph': gustMph,
        'gust_kph': gustKph,
        'uv': uv,
      };
}
