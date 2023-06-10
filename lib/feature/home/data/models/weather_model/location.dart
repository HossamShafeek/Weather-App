class Location {
  final String? name;
  final String? region;
  final String? country;
  final num? lat;
  final num? lon;
  final String? tzId;
  final num? localtimeEpoch;
  final String? localtime;

  const Location({
    this.name,
    this.region,
    this.country,
    this.lat,
    this.lon,
    this.tzId,
    this.localtimeEpoch,
    this.localtime,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        name: json['name'] as String?,
        region: json['region'] as String?,
        country: json['country'] as String?,
        lat: json['lat'] as num?,
        lon: json['lon'] as num?,
        tzId: json['tz_id'] as String?,
        localtimeEpoch: json['localtime_epoch'] as num?,
        localtime: json['localtime'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'region': region,
        'country': country,
        'lat': lat,
        'lon': lon,
        'tz_id': tzId,
        'localtime_epoch': localtimeEpoch,
        'localtime': localtime,
      };
}
