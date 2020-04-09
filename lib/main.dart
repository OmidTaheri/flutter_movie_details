import 'package:flutter/material.dart';
import 'package:fluttermoviedetails/movie_api.dart';
import 'package:fluttermoviedetails/movie_details_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color(0XFFFF5959)
      ),
      home: MovieDetailsPage(testMovie),
    );
  }
}


