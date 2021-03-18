import 'package:flutter/material.dart';

import './search_page.dart';

class MoviesPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MoviesPageStatefulWidget()
    );
  }
}

class MoviesPageStatefulWidget extends StatefulWidget {
  MoviesPageStatefulWidget({Key key}) : super(key: key);

  @override
  _MoviesPageWidgetState createState() {
    return _MoviesPageWidgetState();
  }
}

class _MoviesPageWidgetState extends State<MoviesPageStatefulWidget> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        shadowColor: Colors.deepPurpleAccent,
        title: ImageIcon(AssetImage('assets/logo_outline.png'), size: 60),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              tooltip: 'Search',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPageWidget())
                );
              }
          ),
          IconButton(
              icon: const ImageIcon(AssetImage('assets/filter_button.png'), size: 25, color: Colors.white),
              tooltip: 'Filter',
              onPressed: null
          )
        ],
      ),
      body: Center(
        child: Text('Movies', style: optionStyle),
      )
    );
  }
}