import 'package:flutter/material.dart';

import './home_page.dart';
import './movies_page.dart';
import './tv_page.dart';

main() {
  runApp(MovieWardrobeApp());
}

class MovieWardrobeApp extends StatelessWidget {
  static const String _title = 'Movie Wardrobe';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MovieWardrobeStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MovieWardrobeStatefulWidget extends StatefulWidget {
  MovieWardrobeStatefulWidget({Key key}) : super(key: key);

  @override
  _MovieWardrobeWidgetState createState() {
    return _MovieWardrobeWidgetState();
  }
}

/// This is the private State class that goes with MyStatefulWidget.
class _MovieWardrobeWidgetState extends State<MovieWardrobeStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static List<Widget> _widgetOptions = <Widget>[
    HomePageWidget(),
    MoviesPageWidget(),
    TVPageWidget()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/home_button.png'), size: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/movies_button.png'), size: 30,),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/tv_button.png'), size: 30,),
            label: 'TV',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}