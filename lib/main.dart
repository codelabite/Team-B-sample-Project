import 'package:flutter/material.dart';
import 'HomeScreen.dart';


void main(){
  runApp(FireBaseApp());
}

class FireBaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FireBaseApp",
      theme: ThemeData(
        fontFamily: "CaviarDreams_Bold",
          primarySwatch: Colors.cyan,
          canvasColor: Colors.cyan[50]
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}