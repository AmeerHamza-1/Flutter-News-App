import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/model.dart';

class NewsService {
  static const String apiUrl =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=b984358b643343db89bfb011d16556bf';

  Future<List<NewsArticle>> fetchNews() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      List<dynamic> articles = data['articles'];

      return articles.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}
