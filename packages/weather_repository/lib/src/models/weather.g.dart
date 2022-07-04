// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Weather',
      json,
      ($checkedConvert) {
        final val = Weather(
          location: $checkedConvert('Location', (v) => v as String),
          temperature:
              $checkedConvert('Temperature', (v) => (v as num).toDouble()),
          condition: $checkedConvert(
              'Condition', (v) => $enumDecode(_$WeatherConditionEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'location': 'Location',
        'temperature': 'Temperature',
        'condition': 'Condition'
      },
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'Location': instance.location,
      'Temperature': instance.temperature,
      'Condition': _$WeatherConditionEnumMap[instance.condition],
    };

const _$WeatherConditionEnumMap = {
  WeatherCondition.clear: 'clear',
  WeatherCondition.rainy: 'rainy',
  WeatherCondition.cloudy: 'cloudy',
  WeatherCondition.snowy: 'snowy',
  WeatherCondition.unknown: 'unknown',
};