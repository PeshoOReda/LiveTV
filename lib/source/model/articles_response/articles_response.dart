import 'articles.dart';

class ArticlesResponse {
  String? status;
  String? code;
  String? message;
  num? totalResults;
  List<Articles>? articles;

  ArticlesResponse({
    this.code,
    this.message,
    this.status,
    this.totalResults,
    this.articles,
  });

  ArticlesResponse.fromJson(dynamic json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(Articles.fromJson(v));
      });
    }
  }
}
