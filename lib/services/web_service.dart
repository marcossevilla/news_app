import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/news_article.dart';
import 'package:news_app/utils/constants.dart';

class WebService {
  Future<List<NewsArticle>> fetchHeadlinesByKeyword(String keyword) async {

    final res = await http.get(Constants.headlinesFor(keyword));

    if (res.statusCode == 200) {
      final result = jsonDecode(res.body);
      Iterable list = result['articles'];
      return list.map((json) => NewsArticle.fromJSON(json)).toList();
    } else {
      throw Exception('Failed to get news.');
    }
  }

  Future<List<NewsArticle>> fetchTopHeadlines() async {

    final res = await http.get(Constants.topHeadlines);

    if (res.statusCode == 200) {
      final result = jsonDecode(res.body);
      Iterable list = result['articles'];
      return list.map((item) => NewsArticle.fromJSON(item)).toList();
    } else {
      throw Exception('Failed to get top news.');
    }
  }
}
