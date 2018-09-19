/**
 * Included Libs
 */
import 'package:flutter/material.dart';

/// Build new Instance of new News.
class News extends StatelessWidget {

  final List<String> news;

  News([this.news = const []]);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: this.news
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
