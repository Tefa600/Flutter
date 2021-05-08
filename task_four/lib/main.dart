import 'package:flutter/material.dart';
import 'home.dart';
import 'newsmodel/news.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home:Home(),
    );
  }
}

