import 'package:accu_weather_api/src/accu_weather_api_client.dart';
import 'package:accu_weather_api/src/configuration/configuration.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockHttpClient extends Mock implements http.Client {}

class MockResponse extends Mock implements http.Response {}

class FakeUri extends Fake implements Uri {}

void main() {
  group('AccuWeatherApiClient', () {
    late http.Client httpClient;
    late AccuWeatherApiClient accuWeatherApiClient;

    setUpAll(() {
      registerFallbackValue(FakeUri());
    });

    setUp(() {
      httpClient = MockHttpClient();
      accuWeatherApiClient = AccuWeatherApiClient(httpClient: httpClient);
    });

    group('constructor', () {
      test('does not require an httpClient', () {
        expect(AccuWeatherApiClient(), isNotNull);
      });
    });

    group('locationSearch', () {
      const city = 'Kyiv';
      const queryParameters = {
        'apikey': Configuration.apiKey,
        'q': city,
      };

      test('makes correct http request', () async {
        final response = MockResponse();
        when(() => response.statusCode).thenReturn(200);
        when(() => response.body).thenReturn('[]');
        when(() => httpClient.get(any())).thenAnswer((_) async => response);
        try {
          await accuWeatherApiClient.locationSearch(city);
        } catch (_) {}
        verify(
          () => httpClient.get(
            Uri.https(
              Configuration.baseUrl,
              '/locations/v1/cities/search',
              queryParameters,
            ),
          ),
        ).called(1);
      });
    });
  });
}
