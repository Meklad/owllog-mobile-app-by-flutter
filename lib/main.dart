/**
 * Imported Libs...
 */
import 'package:flutter/material.dart';

/**
 * Imported Widgets
 */
import './news_manager.dart';

/// Construct new App...
void main() {
  runApp(Owllog());
}

/// The Main App Widget...
class Owllog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Owllog'),
        ),
        body: NewsManager('!Braking News!: Two Trains Impacts in Ramsis Station.'),
      ),
    );
  }
}
