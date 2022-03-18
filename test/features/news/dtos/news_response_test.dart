import 'package:flutter_test/flutter_test.dart';
import 'package:weather_module/features/news/models/news_response.dart';

void main() {
  group('mockData constructor', () {
    test(
      'should return a list of articles with the correct number and success response',
      () async {
        //* Arrange
        final tResponse = NewsApiResponse.mockData(
          isSuccessful: true,
          results: 2,
        );
        //* Assert
        expect(tResponse.status, 'ok');
        expect(tResponse.message, null);
        expect(tResponse.articles.length, 2);
        expect(tResponse.articles.first.title, 'Test Title 1');
        expect(tResponse.articles.last.title,
            'Test Title ${tResponse.articles.length}');
      },
    );
  });
}
