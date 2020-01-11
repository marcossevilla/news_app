import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/news_article.dart';

class WebService {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=2b9c9c8c814b4982b7093db3d8a07d30';

    final res = await http.get(url);

    if (res.statusCode == 200) {
      final result = jsonDecode(res.body);
      Iterable list = result['articles'];
      return list.map((item) => NewsArticle.fromJSON(item)).toList();
    } else {
      throw Exception('Failed to get top news.');
    }
  }
}
