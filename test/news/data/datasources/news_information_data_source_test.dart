import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:weather_module/core/error/exception.dart';
import 'package:weather_module/news/data/datasources/news_information_data_source.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MockHttpClient mockHttpClient;
  late NewsInformationDataSource systemUnderTest;

  setUp(() {
    mockHttpClient = MockHttpClient();
    systemUnderTest = NewsInformationDataSource(httpClient: mockHttpClient);
    registerFallbackValue(Uri());
  });
  group('getTopNewsInformations', () {
    test('should throw a ServerException when the status code is not 200',
        () async {
      when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => http.Response('Something went wrong', 404));
      expect(systemUnderTest.getTopNewsInformations(),
          throwsA(isA<ServerException>()));
      verify(() => mockHttpClient.get(any(), headers: any(named: 'headers')));
    });
  });
}
