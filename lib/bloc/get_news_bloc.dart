import 'package:news_reader/models/news_model.dart';
import 'package:news_reader/repository/news_repository.dart';
import 'package:rxdart/rxdart.dart';

class GetNewsBloc {
  final NewsRepository newsRepository = NewsRepository();
  final BehaviorSubject<NewsResponse> _subject =
      BehaviorSubject<NewsResponse>();

  BehaviorSubject<NewsResponse> get subject => _subject;

  getNews(String category, String country) async {
    NewsResponse newsResponse = await newsRepository.getNews(category, country);
    _subject.sink.add(newsResponse);
  }

  dispose() {
    _subject.close();
  }
}
