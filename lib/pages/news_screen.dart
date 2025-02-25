import 'package:flutter/material.dart';
import 'package:news_reader/bloc/get_news_bloc.dart';
import 'package:news_reader/common/news_headline.dart';
import 'package:news_reader/common/utils.dart';
import 'package:news_reader/models/news_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  late GetNewsBloc getNewsBloc;

  @override
  void initState() {
    super.initState();
    getNewsBloc = GetNewsBloc();
    getNewsBloc.getNews('general', 'us');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade400,
        title: Text(
          'News Reader',
          style: myTextStyle(25, Colors.white, FontWeight.w700),
        ),
      ),
      backgroundColor: Colors.deepPurple.shade200,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...categories.map((category) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        category,
                        style: myTextStyle(
                            23, Colors.grey.shade200, FontWeight.w600),
                      ),
                    );
                  }),
                  const SizedBox(width: 15),
                ],
              ),
            ),
            const SizedBox(height: 20),
            StreamBuilder<NewsResponse>(
                stream: getNewsBloc.subject.stream,
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  List<NewsModel> newsList = snapshot.data!.news;
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: newsList.length,
                    itemBuilder: (context, index) {
                      return const NewsHeadline();
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
