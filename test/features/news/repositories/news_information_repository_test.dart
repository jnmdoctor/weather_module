import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as i;
import 'package:mocktail/mocktail.dart';
import 'package:weather_module/di/injection.dart';
import 'package:weather_module/features/news/models/news_response.dart';
import 'package:weather_module/features/news/repositories/news_failure.dart';
import 'package:weather_module/features/news/repositories/news_information_client.dart';
import 'package:weather_module/features/news/repositories/news_information_repository.dart';

void main() {
  ///The system under test (feature to test)
  late NewsInformationRepository sut;
  late NewsInformationClient mockClient;

  ///Setup DI for dependencies
  setUpAll(() => initDependencyInjection(i.Environment.test));

  ///Reset client state per test
  setUp(() {
    mockClient = locator<NewsInformationClient>();
    sut = NewsInformationRepository(client: mockClient);
  });

  group('getTopNewsInformations', () {
    //* Define test variables
    final testNewsResponseSuccess =
        NewsApiResponse.mockData(results: 1, isSuccessful: true);
    final testNewsResponseFail =
        NewsApiResponse.mockData(results: 1, isSuccessful: false);
    test(
      'should return a list of NewsResponse',
      () async {
        //* Arrange
        when(() => mockClient.getHeadlines(page: any(named: 'page')))
            .thenAnswer((_) async => testNewsResponseSuccess);

        //* Act
        final result = await sut.getTopNewsInformations();

        //* Assert
        expect(result.isRight(), true);
        result.fold((_) => null, (response) {
          expect(
            response.size,
            testNewsResponseSuccess.articles.length,
          );
          expect(
            response.get(0),
            testNewsResponseSuccess.articles.first.toModel(),
          );
        });
      },
    );

    test(
      'should return a failure when repository fails to fetch',
      () async {
        //* Arrange
        when(() => mockClient.getHeadlines(page: any(named: 'page')))
            .thenAnswer((_) async => testNewsResponseFail);

        //* Act
        final result = await sut.getTopNewsInformations();

        //* Assert
        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, const NewsFailure.error('Forbidden')),
          (_) => null,
        );
      },
    );
  });
}
