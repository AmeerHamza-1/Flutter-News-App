class NewsArticle {
  final String title;
  final String description;
  final String urlToImage;
  final String publishedAt;
  final String url;

  NewsArticle({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.publishedAt,
    required this.url,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'] ?? 'No Title', 
      description: json['description'] ?? 'No Description', 
      urlToImage: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'] ?? 'Unknown Date', 
      url: json['url'] ?? '', 
    );
  }
}
