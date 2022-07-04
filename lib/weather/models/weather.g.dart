// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Temperature _$TemperatureFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Temperature',
      json,
      ($checkedConvert) {
        final val = Temperature(
          value: $checkedConvert('Value', (v) => (v as num).toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {'value': 'Value'},
    );

Map<String, dynamic> _$TemperatureToJson(Temperature instance) =>
    <String, dynamic>{
      'Value': instance.value,
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Weather',
      json,
      ($checkedConvert) {
        final val = Weather(
          condition: $checkedConvert(
              'Condition', (v) => $enumDecode(_$WeatherConditionEnumMap, v)),
          lastUpdated: $checkedConvert(
              'LastUpdated', (v) => DateTime.parse(v as String)),
          location: $checkedConvert('Location', (v) => v as String),
          temperature: $checkedConvert('Temperature',
              (v) => Temperature.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'condition': 'Condition',
        'lastUpdated': 'LastUpdated',
        'location': 'Location',
        'temperature': 'Temperature'
      },
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'Condition': _$WeatherConditionEnumMap[instance.condition],
      'LastUpdated': instance.lastUpdated.toIso8601String(),
      'Location': instance.location,
      'Temperature': instance.temperature.toJson(),
    };

const _$WeatherConditionEnumMap = {
  WeatherCondition.clear: 'clear',
  WeatherCondition.rainy: 'rainy',
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.snowy: 'snowy',
  WeatherCondition.unknown: 'unknown',
};
