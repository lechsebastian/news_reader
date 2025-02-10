import 'package:flutter/material.dart';
import 'package:news_reader/common/utils.dart';

class NewsHeadline extends StatelessWidget {
  const NewsHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Card(
        elevation: 3,
        child: Row(
          children: [
            Image(
              width: MediaQuery.of(context).size.width * 0.33,
              height: 140,
              image: const NetworkImage(
                'https://media.istockphoto.com/id/1369150014/pl/wektor/naj%C5%9Bwie%C5%BCsze-wiadomo%C5%9Bci-z-t%C5%82a-mapy-%C5%9Bwiata-wektor.jpg?s=612x612&w=0&k=20&c=D4VrJ97-2Nj40qlnwQV8UZHwwdnai8UST9MhdoFgHrw=',
              ),
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet ',
                      style: myTextStyle(
                        16,
                        Colors.black,
                        FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'John Smith',
                          style: myTextStyle(
                            14,
                            Colors.grey,
                            FontWeight.bold,
                          ),
                        ),
                        Text(
                          '12-05-2025',
                          style: myTextStyle(
                            14,
                            Colors.grey,
                            FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.play_arrow_sharp,
                              color: Colors.deepPurple.shade400,
                              size: 43,
                            ),
                            Icon(
                              Icons.stop,
                              color: Colors.deepPurple.shade400,
                              size: 43,
                            ),
                          ],
                        ),
                        Container(
                          width: 70,
                          height: 32,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.deepPurple.shade400,
                            ),
                            onPressed: () {},
                            child: Text(
                              'View',
                              style: myTextStyle(
                                15,
                                Colors.black,
                                FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
