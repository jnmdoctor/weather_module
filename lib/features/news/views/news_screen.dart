import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_module/features/news/views/widgets/news_views.dart';
import 'package:weather_module/di/injection.dart';
import 'package:weather_module/features/news/viewmodels/news_cubit.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => locator<NewsCubit>(), child: const NewsBody());
  }
}

class NewsBody extends StatelessWidget {
  const NewsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => context.read<NewsCubit>().getTopNews(),
      child: BlocBuilder<NewsCubit, NewsState>(
        bloc: BlocProvider.of<NewsCubit>(context)..getTopNews(),
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const NewsLoading(),
            loading: () => const NewsLoading(),
            failure: (failure) => NewsError(failure: failure),
            success: (newsInformations) => NewsList(newsInformations),
            orElse: () => const NewsLoading(),
          );
        },
      ),
    );
  }
}
