import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as i;
import 'package:weather_module/di/injection.dart';
import 'package:weather_module/features/news/models/news_model.dart';
import 'package:weather_module/features/news/repositories/news_failure.dart';
import 'package:weather_module/features/news/repositories/news_information_repository.dart';
import 'package:weather_module/features/news/viewmodels/news_cubit.dart';
import 'package:kt_dart/kt.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  ///The system under test
  late NewsCubit sut;

  late INewsInformationRepository mockRepository;

  setUpAll(() => initDependencyInjection(i.Environment.test));

  setUp(() {
    mockRepository = locator<INewsInformationRepository>();
    sut = NewsCubit(repository: mockRepository);
  });

  test(
    'Cubit initial state should be correct',
    () async {
      expect(sut.state, const NewsState.initial());
    },
  );

  group('getTopNews', () {
    final tList = [
      const NewsModel(title: 'Test 1', url: 'www.google.com'),
      const NewsModel(title: 'Test 2', url: 'www.yahoo.com'),
    ].toImmutableList();

    ///Sets up the mock repository to return [tList] when getTopNews() is invoked
    void setupMockSuccessful() =>
        when(() => mockRepository.getTopNewsInformations())
            .thenAnswer((_) async => Right(tList));

    ///Sets up the mock repository to return [failure] when getTopNews() is invoked
    void setupMockUnsuccessful(NewsFailure failure) =>
        when(() => mockRepository.getTopNewsInformations())
            .thenAnswer((_) async => Left(failure));

    blocTest(
      'NewsCubit should emit loading state and then success state when getting news is successful',
      build: () {
        setupMockSuccessful();
        return sut;
      },
      act: (cubit) async => (cubit! as NewsCubit).getTopNews(),
      verify: (_) => mockRepository.getTopNewsInformations(),
      expect: () => [
        const NewsState.loading(),
        NewsState.success(tList),
      ],
    );

    blocTest(
      'NewsCubit should emit loading state and then error state when getting news is unsuccessful',
      build: () {
        const failure = NewsFailure.error('Not found.');
        setupMockUnsuccessful(failure);
        return sut;
      },
      act: (cubit) async => (cubit! as NewsCubit).getTopNews(),
      verify: (_) => mockRepository.getTopNewsInformations(),
      expect: () => [
        const NewsState.loading(),
        const NewsState.failure(NewsFailure.error('Not found.')),
      ],
    );
  });
}
