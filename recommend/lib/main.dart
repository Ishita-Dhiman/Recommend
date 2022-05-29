import 'package:flutter/material.dart';
import 'package:recommend/screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'Recommend.com',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: HomePage());
  }
}

// Home Page


// Search Page

/*
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Recommend',
            style: TextStyle(
              color: Colors.black54,
              backgroundColor: Colors.transparent,
              fontWeight: FontWeight.w600,
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
          elevation: 5.0,
          shadowColor: Colors.teal,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.transparent, Colors.white54]),
            ),
          ),
        ),
        
        body: Container(
          
          margin: EdgeInsets.all(8.0),

        ),
      ),
    );
  }
}*/
