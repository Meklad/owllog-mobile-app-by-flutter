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
  @override
  State<StatefulWidget> createState() {
    return _NewsManagerState();
  }
}

/// Change The State of New Manager Widget by Adding new News to the Screen.
class _NewsManagerState extends State<NewsManager> {
  List<String> _news = [
    '!Braking News!: Two Trains Impacts in Ramsis Station.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
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
