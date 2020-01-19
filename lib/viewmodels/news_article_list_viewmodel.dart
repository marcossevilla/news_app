import 'package:flutter/material.dart';
import 'package:news_app/models/news_article.dart';
import 'package:news_app/services/web_service.dart';
import 'package:news_app/viewmodels/news_article_viewmodel.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleViewModel> articles = List<NewsArticleViewModel>();

  NewsArticleListViewModel() {
    _populateTopHeadlines();
  }

  void _populateTopHeadlines() async {
    List<NewsArticle> newsArticles = await WebService().fetchTopHeadlines();

    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .toList();

    notifyListeners();
  }
}
