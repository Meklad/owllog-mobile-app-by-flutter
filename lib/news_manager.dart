/**
 * Imported Libs
 */
import 'package:flutter/material.dart';

/**
 * Imported Widgets
 */
import './news.dart';
import './news_control.dart';

/// Main News Manager Widget
class NewsManager extends StatefulWidget {
  final String startingNews;

  NewsManager({this.startingNews = 'Owllog Title'});

  @override
  State<StatefulWidget> createState() {
    return _NewsManagerState();
  }
}

/// Change The State of New Manager Widget by Adding new News to the Screen.
class _NewsManagerState extends State<NewsManager> {
  List<String> _news = [];

  @override
  void initState() {
    _news.add(widget.startingNews);
    super.initState();
  }

  @override
  void didUpdateWidget(NewsManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addNews(String news) {
    setState(() {
      _news.add(news);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: NewsControl(_addNews),
        ),
        News(_news),
      ],
    );
  }
}
