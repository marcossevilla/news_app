class Constants {
  static String topHeadlines =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=2b9c9c8c814b4982b7093db3d8a07d30';

  static String headlinesFor(String keyword) {
    return 'https://newsapi.org/v2/everything?q=$keyword&apiKey=2b9c9c8c814b4982b7093db3d8a07d30';
  }
}
