/**
 * Imported Libs
 */
import 'package:flutter/material.dart';

/**
 * Imported Widgets
 */
import './news.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _news.add('Advanced News From Owllog.');
              });
            },
            child: Text('Add News'),
          ),
        ),
        News(_news),
      ],
    );
  }
}
