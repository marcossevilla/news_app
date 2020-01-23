import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list.dart';
import 'package:provider/provider.dart';

import '../viewmodels/news_article_list_viewmodel.dart';

class NewsListPage extends StatefulWidget {
  @override
  _NewsListPageState createState() => _NewsListPageState();
}

class _NewsListPageState extends State<NewsListPage> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    // listen fires up once and forgets about it
    Provider.of<NewsArticleListViewModel>(context, listen: false)
        .populateTopHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsArticleListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Top Headlines'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter search term...',
                icon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => _controller.clear(),
                ),
              ),
            ),
          ),
          Expanded(child: NewsList(articles: newsProvider.articles)),
        ],
      ),
    );
  }
}
