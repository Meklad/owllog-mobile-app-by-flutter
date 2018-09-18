import 'package:flutter/material.dart';

void main() {
  runApp(Owllog());
}

class Owllog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Owllog'),
        ),
        body: Card(
            child: Column(
          children: <Widget>[Image.asset('assets/food.jpg'), Text('The News')],
        )),
      ),
    );
  }
}
