import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/articles_response/articles_response.dart';
import '../model/sources_response/sources_response.dart';

//newsapi.org/v2/everything?apiKey=0e30f2884d9c4e93b28e4fcc61eb4e15&sources=abc-news
class ApiManager {
  static const String _baseUrl = "newsapi.org";
  static const String _sourcesEndPoint = "/v2/top-headlines/sources";
  static const String _articlesEndPoint = "/v2/everything";
  static const String _apiKey = "294c9977835b4e75857c5ccff210146a";

  static Future<SourcesResponse> getSources(String categoryId) async {
    Uri uri = Uri.http(_baseUrl, _sourcesEndPoint,
        {"apiKey": _apiKey, "category": categoryId});

    http.Response serverResponse = await http.get(uri);
    var json = jsonDecode(serverResponse.body);
    SourcesResponse sourcesResponse = SourcesResponse.fromJson(json);
    return sourcesResponse;
  }

  static Future<ArticlesResponse> getArticles(String sourceId) async {
    Uri url = Uri.http(_baseUrl, _articlesEndPoint, {
      "apiKey": _apiKey,
      "sources": sourceId,
    });
    http.Response serverResponse = await http.get(url);
    var json = jsonDecode(serverResponse.body);
    ArticlesResponse articlesResponse = ArticlesResponse.fromJson(json);
    return articlesResponse;
  }

  static Future<ArticlesResponse> searchResult(String text) async {
    Uri url =
        Uri.http(_baseUrl, _articlesEndPoint, {"apiKey": _apiKey, "q": text});
    http.Response serverResponse = await http.get(url);
    var json = jsonDecode(serverResponse.body);
    ArticlesResponse articlesResponse = ArticlesResponse.fromJson(json);
    return articlesResponse;
  }
}
