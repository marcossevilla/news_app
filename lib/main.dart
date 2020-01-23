import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/news_list_page.dart';
import 'viewmodels/news_article_list_viewmodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: ChangeNotifierProvider(
        create: (context) => NewsArticleListViewModel(),
        child: NewsListPage(),
      ),
    );
  }
}
