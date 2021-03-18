import 'package:flutter/material.dart';

import './search_page.dart';

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: HomePageStatefulWidget()
    );
  }
}

class HomePageStatefulWidget extends StatefulWidget {
  HomePageStatefulWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() {
    return _HomePageWidgetState();
  }
}

class _HomePageWidgetState extends State<HomePageStatefulWidget> {
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
            )
          ],
        ),
        body: Center(
          child: Text('Home', style: optionStyle),
        )
    );
  }
}