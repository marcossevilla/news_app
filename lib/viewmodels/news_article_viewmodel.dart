import 'package:news_app/models/news_article.dart';

class NewsArticleViewModel {
  NewsArticle _newsArticle;

  NewsArticleViewModel({NewsArticle article}) : _newsArticle = article;

  String get title => _newsArticle.title;

  String get description => _newsArticle.description;

  String get url => _newsArticle.url;

  String get imageURL => _newsArticle.urlToImage;
}
