import 'package:flutter/material.dart';

class NewsHeadline extends StatelessWidget {
  const NewsHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(left: 10, right: 5, bottom: 10),
      child: Card(
        elevation: 3,
        child: Row(children: [
          Image(
            width: MediaQuery.of(context).size.width * 0.33,
            height: 140,
            image: const NetworkImage(
              'https://media.istockphoto.com/id/1369150014/pl/wektor/naj%C5%9Bwie%C5%BCsze-wiadomo%C5%9Bci-z-t%C5%82a-mapy-%C5%9Bwiata-wektor.jpg?s=612x612&w=0&k=20&c=D4VrJ97-2Nj40qlnwQV8UZHwwdnai8UST9MhdoFgHrw=',
            ),
            fit: BoxFit.fill,
          ),
        ]),
      ),
    );
  }
}
