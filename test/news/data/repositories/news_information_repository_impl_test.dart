import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_module/core/error/exception.dart';
import 'package:weather_module/core/error/failures.dart';
import 'package:weather_module/news/data/datasources/news_information_data_source.dart';
import 'package:weather_module/news/data/models/news_model.dart';
import 'package:weather_module/news/data/repositories/news_information_repository_impl.dart';

class MockNewsInformationDataSource extends Mock
    implements INewsInformationDataSource {}

void main() {
  late MockNewsInformationDataSource mockNewsInformationDataSource;
  late NewsInformationRepositoryImpl systemUnderTest;

  setUp(() {
    mockNewsInformationDataSource = MockNewsInformationDataSource();
    systemUnderTest = NewsInformationRepositoryImpl(
        newsInformationDataSource: mockNewsInformationDataSource);
  });

  final List<NewsModel> tNewsInformation = [
    const NewsModel(title: 'Sample Title 1', url: 'www.sampleurl1.com'),
    const NewsModel(title: 'Sample Title 2', url: 'www.sampleurl2.com'),
    const NewsModel(title: 'Sample Title 3', url: 'www.sampleurl3.com'),
  ];

  group('getTopNewsInformations', () {
    test('should return the news information from the data source', () async {
      when(() => mockNewsInformationDataSource.getTopNewsInformations())
          .thenAnswer((_) async => tNewsInformation);
      final result = await systemUnderTest.getTopNewsInformations();
      expect(result, Right(tNewsInformation));
      verify(() => mockNewsInformationDataSource.getTopNewsInformations());
      verifyNoMoreInteractions(mockNewsInformationDataSource);
    });

    test('should return ServerFailure from the data source when the call fails',
        () async {
      when(() => mockNewsInformationDataSource.getTopNewsInformations())
          .thenAnswer((_) async => throw (ServerException()));
      final result = await systemUnderTest.getTopNewsInformations();
      expect(result, Left(ServerFailure()));
      verify(() => mockNewsInformationDataSource.getTopNewsInformations());
      verifyNoMoreInteractions(mockNewsInformationDataSource);
    });
  });
}
