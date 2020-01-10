class NewsArticle {
  final String title;
  final String description;
  final String url;
  final String urlToImage;

  NewsArticle({this.title, this.description, this.url, this.urlToImage});

  factory NewsArticle.fromJSON(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
    );
  }
}
