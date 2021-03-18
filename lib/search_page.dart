import 'package:flutter/material.dart';

class SearchPageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SearchPageStatefulWidget(),
    );
  }
}

class SearchPageStatefulWidget extends StatefulWidget {
  SearchPageStatefulWidget({Key key}) : super(key: key);

  @override
  _SearchPageWidgetState createState() {
    return _SearchPageWidgetState();
  }
}

class _SearchPageWidgetState extends State<SearchPageStatefulWidget> {
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        shadowColor: Colors.deepPurpleAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.white,
              width: 2.0
            ),
            borderRadius: BorderRadius.circular(5)
          ),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.white),
                border: InputBorder.none,
                hintText: 'Search Movie Wardrobe',
                hintStyle: TextStyle(color: Colors.white)
            ),
          )
        )
      ),
        body: Center(
          child: Text('Search', style: optionStyle),
        )
    );
  }
}