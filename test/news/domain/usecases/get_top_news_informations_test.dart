import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_module/core/error/failures.dart';
import 'package:weather_module/core/usecases/usecase.dart';
import 'package:weather_module/news/domain/entities/news_information.dart';
import 'package:weather_module/news/domain/repositories/news_information_repository.dart';
import 'package:weather_module/news/domain/usecases/get_top_news_informations.dart';

class MockNewsInformationRepository extends Mock
    implements INewsInformationRepository {}

void main() {
  late MockNewsInformationRepository mockNewsInformationRepository;
  late GetTopNewsInformations systemUnderTest;

  setUp(() {
    mockNewsInformationRepository = MockNewsInformationRepository();
    systemUnderTest = GetTopNewsInformations(mockNewsInformationRepository);
  });

  final List<NewsInformation> tNewsInformation = [
    const NewsInformation(title: 'Sample Title 1', url: 'www.sampleurl1.com'),
    const NewsInformation(title: 'Sample Title 2', url: 'www.sampleurl2.com'),
    const NewsInformation(title: 'Sample Title 3', url: 'www.sampleurl3.com'),
  ];

  group('GetTopNewsInformations', () {
    test('should return news data from the repository', () async {
      when(() => mockNewsInformationRepository.getTopNewsInformations())
          .thenAnswer((_) async => Right(tNewsInformation));

      final result = await systemUnderTest(NoParams());
      expect(result, Right(tNewsInformation));

      verify(() => mockNewsInformationRepository.getTopNewsInformations());
      verifyNoMoreInteractions(mockNewsInformationRepository);
    });

    test('should return ServerFailure data from the repository when call fails',
        () async {
      when(() => mockNewsInformationRepository.getTopNewsInformations())
          .thenAnswer((_) async => Left(ServerFailure()));

      final result = await systemUnderTest(NoParams());
      expect(result, Left(ServerFailure()));

      verify(() => mockNewsInformationRepository.getTopNewsInformations());
      verifyNoMoreInteractions(mockNewsInformationRepository);
    });
  });
}
