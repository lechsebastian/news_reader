import 'package:flutter/material.dart';
import 'package:news_reader/common/news_headline.dart';
import 'package:news_reader/common/utils.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

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
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const NewsHeadline();
              },
            ),
          ],
        ),
      ),
    );
  }
}
