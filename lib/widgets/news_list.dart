import 'package:flutter/material.dart';
import 'package:news_app/viewmodels/news_article_viewmodel.dart';

class NewsList extends StatelessWidget {
  final List<NewsArticleViewModel> articles;

  NewsList({this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];
        return ListTile(
          leading: Container(
            width: 100,
            height: 100,
            child: article.imageURL != null
                ? Image.network(article.imageURL)
                : Container(color: Colors.blue),
          ),
          title: Text(article.title),
        );
      },
    );
  }
}
