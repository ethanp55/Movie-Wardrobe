import 'package:flutter/material.dart';

import './search_page.dart';

class TVPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TVPageStatefulWidget(),
    );
  }
}

class TVPageStatefulWidget extends StatefulWidget {
  TVPageStatefulWidget({Key key}) : super(key: key);

  @override
  _TVPageWidgetState createState() {
    return _TVPageWidgetState();
  }
}

class _TVPageWidgetState extends State<TVPageStatefulWidget> {
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
              icon: const Icon(Icons.search, color: Colors.white,),
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
          child: Text('TV', style: optionStyle),
        )
    );
  }
}