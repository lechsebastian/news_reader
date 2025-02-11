class NewsModel {
  final String author;
  final String title;
  final String description;
  final String urlToImage;
  final String date;
  final String url;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.date,
    required this.url,
  });

  NewsModel.fromJson(Map<String, dynamic> json)
      : author = json['author'],
        title = json['title'],
        description = json['description'],
        urlToImage = json['urlToImage'],
        date = json['publishedAt'],
        url = json['url'];
}

class NewsResponse {
  final List<NewsModel> news;
  final String error;

  NewsResponse({required this.news, required this.error});

  NewsResponse.fromJson(Map<String, dynamic> json)
      : news = (json['articles'] as List)
            .map((i) => NewsModel.fromJson(i))
            .toList(),
        error = '';

  NewsResponse.showError(String errorValue)
      : news = [],
        error = errorValue;
}
