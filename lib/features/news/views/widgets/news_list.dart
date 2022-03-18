import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:weather_module/features/news/models/news_model.dart';
import 'package:weather_module/utils/global_functions/network_utils.dart';

class NewsList extends StatelessWidget {
  const NewsList(this.newsDatas, {Key? key}) : super(key: key);

  final KtList<NewsModel> newsDatas;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children:
          newsDatas.map((model) => _buildNewsListItem(context, model)).asList(),
    );
  }
}

Widget _buildNewsListItem(
  BuildContext context,
  NewsModel newsData,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      title: Text(
        newsData.title,
        style: const TextStyle(fontSize: 20),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.launch),
        onPressed: () async {
          validateUIInternet(context, whenConnected: () {
            final String urlToLaunch = newsData.url;
            launch(urlToLaunch);
          });
        },
      ),
    ),
  );
}
