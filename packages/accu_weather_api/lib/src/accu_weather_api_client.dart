import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../accu_weather_api.dart';
import 'configuration/configuration.dart';

class LocationIdRequestFailure implements Exception {}

class LocationNotFoundFailure implements Exception {}

class WeatherRequestFailure implements Exception {}

class WeatherNotFoundFailure implements Exception {}

class AccuWeatherApiClient {
  AccuWeatherApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = Configuration.baseUrl;

  final http.Client _httpClient;

  Future<Location> locationSearch(String city) async {
    final queryParameters = {
      'apikey': Configuration.apiKey,
      'q': city,
    };

    final locationRequest = Uri.https(
      _baseUrl,
      '/locations/v1/cities/search',
      queryParameters,
    );
    final locationResponse = await _httpClient.get(locationRequest);

    if (locationResponse.statusCode != 200) {
      throw LocationIdRequestFailure();
    }

    final locationJson = jsonDecode(
      locationResponse.body,
    ) as List;

    if (locationJson.isEmpty) {
      throw LocationNotFoundFailure();
    }

    return Location.fromJson(locationJson.first as Map<String, dynamic>);
  }

  Future<Weather> getWeather(int locationId) async {
    final queryParameters = {'apikey': Configuration.apiKey};

    final weatherRequest = Uri.https(
      _baseUrl,
      '/currentconditions/v1/$locationId',
      queryParameters,
    );

    final weatherResponse = await _httpClient.get(weatherRequest);

    if (weatherResponse.statusCode != 200) {
      throw WeatherRequestFailure();
    }

    final bodyJson = jsonDecode(weatherResponse.body) as List;

    if (bodyJson.isEmpty) {
      throw WeatherNotFoundFailure();
    }

    if (bodyJson.isEmpty) {
      throw WeatherNotFoundFailure();
    }

    return Weather.fromJson(bodyJson.first as Map<String, dynamic>);
  }
}
