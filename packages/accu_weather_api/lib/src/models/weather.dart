import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  Weather({
    required this.localObservationDateTime,
    required this.epochTime,
    required this.weatherText,
    required this.weatherIcon,
    required this.hasPrecipitation,
    required this.precipitationType,
    required this.isDayTime,
    required this.temperature,
    required this.mobileLink,
    required this.link,
  });

  final String localObservationDateTime;
  final int epochTime;
  final String weatherText;
  final int? weatherIcon;
  final bool hasPrecipitation;
  final PrecipitationType? precipitationType;
  final bool isDayTime;
  final Temperature temperature;
  final String mobileLink;
  final String link;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@JsonSerializable()
class PrecipitationType {
  PrecipitationType();

  factory PrecipitationType.fromJson(Map<String, dynamic> json) =>
      _$PrecipitationTypeFromJson(json);
}

@JsonSerializable()
class Temperature {
  Temperature({
    required this.metric,
    required this.imperial,
  });

  final MetricWeather metric;
  final ImperialWeather imperial;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}

@JsonSerializable()
class MetricWeather {
  MetricWeather({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  final double? value;
  final String unit;
  final int unitType;

  factory MetricWeather.fromJson(Map<String, dynamic> json) =>
      _$MetricWeatherFromJson(json);
}

@JsonSerializable()
class ImperialWeather {
  ImperialWeather({
    required this.value,
    required this.unit,
    required this.unitType,
  });

  final double? value;
  final String unit;
  final int unitType;

  factory ImperialWeather.fromJson(Map<String, dynamic> json) =>
      _$ImperialWeatherFromJson(json);
}
