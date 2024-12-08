import 'package:flutter/material.dart';

import '../../../../source/api_manager/api_manager.dart';
import '../../../../source/model/articles_response/articles.dart';
import '../Taps/news/article_item.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManager.searchResult(text),
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
