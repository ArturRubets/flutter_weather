import 'dart:async';

import 'package:accu_weather_api/accu_weather_api.dart' hide Weather;

import '../weather_repository.dart';


class WeatherFailure implements Exception {}

class WeatherRepository {
  WeatherRepository({AccuWeatherApiClient? weatherApiClient})
      : _weatherApiClient = weatherApiClient ?? AccuWeatherApiClient();

  final AccuWeatherApiClient _weatherApiClient;

  WeatherCondition _getConditionFromDescription(String weatherText) {
    return WeatherCondition.values.firstWhere(
      (element) => weatherText.contains(element.name),
      orElse: () => WeatherCondition.unknown,
    );
  }

  Future<Weather> getWeather(String city) async {
    final location = await _weatherApiClient.locationSearch(city);
    final locationKey = int.parse(location.key);
    final weather = await _weatherApiClient.getWeather(locationKey);
    final condition = _getConditionFromDescription(weather.weatherText);

    return Weather(
      temperature: weather.temperature.metric.value ?? 0,
      location: location.localizedName,
      condition: condition,
    );
  }
}
