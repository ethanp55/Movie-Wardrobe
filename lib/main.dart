import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(MovieWardrobeApp());
}

class MovieWardrobeApp extends StatelessWidget {
  Widget build (BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          shadowColor: Colors.deepPurpleAccent,
          title: Text('MW'),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.search, color: Colors.white,),
                tooltip: 'Search',
                onPressed: null)
          ],
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
          // currentIndex: _selectedIndex,
          selectedItemColor: Colors.deepPurpleAccent,
          // onTap: _onItemTapped,
        ),
      )
    );
  }
}