import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_module/features/news/repositories/news_failure.dart';
import 'package:weather_module/features/news/viewmodels/news_cubit.dart';

class NewsError extends StatelessWidget {
  final NewsFailure failure;
  const NewsError({
    required this.failure,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('🙈', style: TextStyle(fontSize: 64)),
        Text(
          failure.errorMessage,
          style: theme.textTheme.headline5,
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () => context.read<NewsCubit>().getTopNews(),
          child: const Text('Retry'),
        )
      ],
    );
  }
}
