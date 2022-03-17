import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:weather_module/core/error/failures.dart';
import 'package:weather_module/core/usecases/usecase.dart';
import 'package:weather_module/news/domain/entities/news_information.dart';
import 'package:weather_module/news/domain/usecases/get_top_news_informations.dart';
import 'package:weather_module/news/presentation/cubit/news_cubit.dart';

class MockGetTopNewsInformations extends Mock
    implements GetTopNewsInformations {}

void main() {
  final MockGetTopNewsInformations mockGetTopNewsInformations =
      MockGetTopNewsInformations();

  final List<NewsInformation> tNewsInformation = [
    const NewsInformation(title: 'Sample Title 1', url: 'www.sampleurl1.com'),
    const NewsInformation(title: 'Sample Title 2', url: 'www.sampleurl2.com'),
    const NewsInformation(title: 'Sample Title 3', url: 'www.sampleurl3.com'),
  ];

  group('getTopNews', () {
    blocTest<NewsCubit, NewsState>(
        'should emit success state for a successful call to get top news use case',
        build: () {
          when(() => mockGetTopNewsInformations(NoParams()))
              .thenAnswer((_) async => Right(tNewsInformation));
          return NewsCubit(topNewsInformations: mockGetTopNewsInformations);
        },
        act: (NewsCubit newsCubit) {
          newsCubit.getTopNews();
        },
        expect: () => [
              const NewsState.loading(),
              NewsState.success(tNewsInformation),
            ],
        verify: (NewsCubit newsCubit) {
          verify(() => mockGetTopNewsInformations(NoParams()));
        });

    blocTest<NewsCubit, NewsState>(
        'should emit failure state for a failed call to get top news use case',
        build: () {
          when(() => mockGetTopNewsInformations(NoParams()))
              .thenAnswer((_) async => Left(ServerFailure()));
          return NewsCubit(topNewsInformations: mockGetTopNewsInformations);
        },
        act: (NewsCubit newsCubit) {
          newsCubit.getTopNews();
        },
        expect: () => [
              const NewsState.loading(),
              const NewsState.failure(),
            ],
        verify: (NewsCubit newsCubit) {
          verify(() => mockGetTopNewsInformations(NoParams()));
        });
  });

  group('refreshTopNews', () {
    blocTest<NewsCubit, NewsState>(
        'should emit success state after a successful call to getTopNews',
        build: () {
          when(() => mockGetTopNewsInformations(NoParams()))
              .thenAnswer((_) async => Right(tNewsInformation));
          return NewsCubit(topNewsInformations: mockGetTopNewsInformations);
        },
        act: (NewsCubit newsCubit) async {
          await newsCubit.getTopNews();
          newsCubit.refreshTopNews();
        },
        expect: () => [
              const NewsState.loading(),
              NewsState.success(tNewsInformation),
            ],
        verify: (NewsCubit newsCubit) {
          verify(() => mockGetTopNewsInformations(NoParams()));
        });

    blocTest<NewsCubit, NewsState>(
        'should not emit states when refreshing without calling getTopNews first',
        build: () {
          return NewsCubit(topNewsInformations: mockGetTopNewsInformations);
        },
        act: (NewsCubit newsCubit) {
          newsCubit.refreshTopNews();
        },
        expect: () => [],
        verify: (NewsCubit newsCubit) {
          verifyNever(() => mockGetTopNewsInformations(NoParams()));
        });
  });
}
