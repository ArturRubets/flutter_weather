// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Weather',
      json,
      ($checkedConvert) {
        final val = Weather(
          localObservationDateTime:
              $checkedConvert('LocalObservationDateTime', (v) => v as String),
          epochTime: $checkedConvert('EpochTime', (v) => v as int),
          weatherText: $checkedConvert('WeatherText', (v) => v as String),
          weatherIcon: $checkedConvert('WeatherIcon', (v) => v as int?),
          hasPrecipitation:
              $checkedConvert('HasPrecipitation', (v) => v as bool),
          precipitationType: $checkedConvert(
              'PrecipitationType',
              (v) => v == null
                  ? null
                  : PrecipitationType.fromJson(v as Map<String, dynamic>)),
          isDayTime: $checkedConvert('IsDayTime', (v) => v as bool),
          temperature: $checkedConvert('Temperature',
              (v) => Temperature.fromJson(v as Map<String, dynamic>)),
          mobileLink: $checkedConvert('MobileLink', (v) => v as String),
          link: $checkedConvert('Link', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'localObservationDateTime': 'LocalObservationDateTime',
        'epochTime': 'EpochTime',
        'weatherText': 'WeatherText',
        'weatherIcon': 'WeatherIcon',
        'hasPrecipitation': 'HasPrecipitation',
        'precipitationType': 'PrecipitationType',
        'isDayTime': 'IsDayTime',
        'temperature': 'Temperature',
        'mobileLink': 'MobileLink',
        'link': 'Link'
      },
    );

PrecipitationType _$PrecipitationTypeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PrecipitationType',
      json,
      ($checkedConvert) {
        final val = PrecipitationType();
        return val;
      },
    );

Temperature _$TemperatureFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Temperature',
      json,
      ($checkedConvert) {
        final val = Temperature(
          metric: $checkedConvert('Metric',
              (v) => MetricWeather.fromJson(v as Map<String, dynamic>)),
          imperial: $checkedConvert('Imperial',
              (v) => ImperialWeather.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'metric': 'Metric', 'imperial': 'Imperial'},
    );

MetricWeather _$MetricWeatherFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'MetricWeather',
      json,
      ($checkedConvert) {
        final val = MetricWeather(
          value: $checkedConvert('Value', (v) => (v as num?)?.toDouble()),
          unit: $checkedConvert('Unit', (v) => v as String),
          unitType: $checkedConvert('UnitType', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'value': 'Value',
        'unit': 'Unit',
        'unitType': 'UnitType'
      },
    );

ImperialWeather _$ImperialWeatherFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ImperialWeather',
      json,
      ($checkedConvert) {
        final val = ImperialWeather(
          value: $checkedConvert('Value', (v) => (v as num?)?.toDouble()),
          unit: $checkedConvert('Unit', (v) => v as String),
          unitType: $checkedConvert('UnitType', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'value': 'Value',
        'unit': 'Unit',
        'unitType': 'UnitType'
      },
    );
