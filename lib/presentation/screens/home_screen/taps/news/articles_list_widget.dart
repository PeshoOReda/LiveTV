import 'package:flutter/material.dart';

import '../../../../../source/api_manager/api_manager.dart';
import '../../../../../source/model/articles_response/articles.dart';
import '../../../../../source/model/sources_response/sources.dart';
import 'article_item.dart';

class ArticlesListWidget extends StatelessWidget {
  const ArticlesListWidget({super.key, required this.source});

  final Source source;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.getArticles(source.id!),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data?.status == "error" || snapshot.hasError) {
            return Text(snapshot.data?.message ?? "Check Internet Connection");
          }
          List<Articles> articles = snapshot.data!.articles!;
          return Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) =>
                  ArticleItem(article: articles[index]),
              itemCount: articles.length,
            ),
          );
        });
  }
}
