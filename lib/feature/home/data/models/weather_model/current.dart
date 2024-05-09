import 'condition.dart';

class Current {
  final num? lastUpdatedEpoch;
  final String? lastUpdated;
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
  final num? visKm;
  final num? visMiles;
  final num? uv;
  final num? gustMph;
  final num? gustKph;

  const Current({
    this.lastUpdatedEpoch,
    this.lastUpdated,
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
    this.visKm,
    this.visMiles,
    this.uv,
    this.gustMph,
    this.gustKph,
  });

  factory Current.fromJson(Map<String, dynamic> json) => Current(
        lastUpdatedEpoch: json['last_updated_epoch'] as num?,
        lastUpdated: json['last_updated'] as String?,
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
        visKm: json['vis_km'] as num?,
        visMiles: json['vis_miles'] as num?,
        uv: json['uv'] as num?,
        gustMph: json['gust_mph'] as num?,
        gustKph: json['gust_kph'] as num?,
      );

  Map<String, dynamic> toJson() => {
        'last_updated_epoch': lastUpdatedEpoch,
        'last_updated': lastUpdated,
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
        'vis_km': visKm,
        'vis_miles': visMiles,
        'uv': uv,
        'gust_mph': gustMph,
        'gust_kph': gustKph,
      };
}
