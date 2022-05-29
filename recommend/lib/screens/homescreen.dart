import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:recommend/main.dart';
import 'package:recommend/screens/search_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommend.com'),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Center(
          child: SizedBox(
              child: Text(
        'Search movies you want...🔍',
        style: TextStyle(
          color: Colors.black54,
          backgroundColor: Colors.transparent,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ))),
    );
  }
}
