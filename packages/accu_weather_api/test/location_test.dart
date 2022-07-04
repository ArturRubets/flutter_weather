import 'dart:convert';

import 'package:accu_weather_api/accu_weather_api.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test('throws CheckedFromJsonException when map is empty', () {
        expect(
          () => Location.fromJson(<String, dynamic>{}),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });

    group('fromJson', () {
      const rawJsonLocation = '''
    [{"Version":1,"Key":"324505","Type":"City","Rank":20,"LocalizedName":"Kyiv","EnglishName":"Kyiv","PrimaryPostalCode":"","Region":{"ID":"EUR","LocalizedName":"Europe","EnglishName":"Europe"},"Country":{"ID":"UA","LocalizedName":"Ukraine","EnglishName":"Ukraine"},"AdministrativeArea":{"ID":"30","LocalizedName":"Kiev City","EnglishName":"Kiev City","Level":1,"LocalizedType":"City","EnglishType":"City","CountryID":"UA"},"TimeZone":{"Code":"EEST","Name":"Europe/Kiev","GmtOffset":3.0,"IsDaylightSaving":true,"NextOffsetChange":"2022-10-30T01:00:00Z"},"GeoPosition":{"Latitude":50.45,"Longitude":30.524,"Elevation":{"Metric":{"Value":136.0,"Unit":"m","UnitType":5},"Imperial":{"Value":446.0,"Unit":"ft","UnitType":0}}},"IsAlias":false,"SupplementalAdminAreas":[],"DataSets":["AirQualityCurrentConditions","AirQualityForecasts","DailyPollenForecast","ForecastConfidence","FutureRadar","MinuteCast"]},{"Version":1,"Key":"1213830","Type":"City","Rank":85,"LocalizedName":"Kyiv","EnglishName":"Kyiv","PrimaryPostalCode":"","Region":{"ID":"EUR","LocalizedName":"Europe","EnglishName":"Europe"},"Country":{"ID":"UA","LocalizedName":"Ukraine","EnglishName":"Ukraine"},"AdministrativeArea":{"ID":"48","LocalizedName":"Mykolayiv","EnglishName":"Mykolayiv","Level":1,"LocalizedType":"Province","EnglishType":"Province","CountryID":"UA"},"TimeZone":{"Code":"EEST","Name":"Europe/Kiev","GmtOffset":3.0,"IsDaylightSaving":true,"NextOffsetChange":"2022-10-30T01:00:00Z"},"GeoPosition":{"Latitude":47.866,"Longitude":31.018,"Elevation":{"Metric":{"Value":126.0,"Unit":"m","UnitType":5},"Imperial":{"Value":413.0,"Unit":"ft","UnitType":0}}},"IsAlias":false,"SupplementalAdminAreas":[],"DataSets":["AirQualityCurrentConditions","AirQualityForecasts","DailyPollenForecast","ForecastConfidence","FutureRadar","MinuteCast"]}]
    ''';

      final locationJsonMap = jsonDecode(rawJsonLocation) as List;
      locationJsonMap[0]['Key'] = 000000;

      test('throws CheckedFromJsonException when key is integer', () {
        expect(
          () =>
              Location.fromJson(locationJsonMap.first as Map<String, dynamic>),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });
  });
}
