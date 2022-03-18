import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:weather_module/features/news/models/news_model.dart';
import 'package:weather_module/features/news/repositories/news_failure.dart';
import 'package:weather_module/features/news/repositories/news_information_repository.dart';

part 'news_state.dart';
part 'news_cubit.freezed.dart';

@Injectable(env: [Environment.prod])
class NewsCubit extends Cubit<NewsState> {
  final INewsInformationRepository repository;

  NewsCubit({required this.repository}) : super(const NewsState.initial());

  ///Initially gets the top headlines from the [repository]
  Future<void> getTopNews() async {
    emit(const NewsState.loading());
    final result = await repository.getTopNewsInformations();
    result.fold((failure) => emit(NewsState.failure(failure)),
        (newsInformations) => emit(NewsState.success(newsInformations)));
  }
}
