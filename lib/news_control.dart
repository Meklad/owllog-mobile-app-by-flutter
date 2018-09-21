import 'package:flutter/material.dart';

class NewsControl extends StatelessWidget {
  final Function addNews;

  NewsControl(this.addNews);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addNews('Sweets');
      },
      child: Text('Add News'),
    );
  }
}
