import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_reader/models/news_model.dart';

class NewsRepository {
  getNews(String category, String country) async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=$country&category=$category&apiKey=3e9e8a5605704b8f94a4793404429afd';

    Uri uri = Uri.parse(url);
    try {
      http.Response response = await http.get(uri);
      return NewsResponse.fromJson(jsonDecode(response.body));
    } catch (e) {
      print('Error fetching news: $e');
      return NewsResponse.showError(e.toString());
    }
  }
}
