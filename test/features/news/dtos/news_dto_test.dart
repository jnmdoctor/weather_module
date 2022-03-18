import 'package:flutter_test/flutter_test.dart';
import 'package:weather_module/features/news/models/news_dto.dart';

void main() {
  group('NewsDto', () {
    test(
      'should convert a news dto to a news model correctly',
      () async {
        //* Arrange
        final tDto = NewsDto.mockData(1);

        //* Act
        final model = tDto.toModel();

        //* Assert
        expect(model.url, 'www.google.com/1');
        expect(model.title, 'Test Title 1');
      },
    );
  });
}
