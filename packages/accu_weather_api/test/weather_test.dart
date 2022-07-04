import 'package:accu_weather_api/accu_weather_api.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test/test.dart';

void main() {
  group('Weather', () {
    group('fromJson', () {
      test('throws CheckedFromJsonException when map is empty', () {
        expect(
          () => Weather.fromJson(<String, dynamic>{}),
          throwsA(isA<CheckedFromJsonException>()),
        );
      });
    });
  });
}
