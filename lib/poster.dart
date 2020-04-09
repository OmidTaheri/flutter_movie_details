import 'package:flutter/material.dart';

class Poster extends StatelessWidget {
  final String posterUrl;
  final double height;

  static const POSTER_RATIO=0.7;


  const Poster(this.posterUrl, this.height);


  @override
  Widget build(BuildContext context) {

    var width = POSTER_RATIO * height;

    return Material(
      borderRadius: BorderRadius.circular(4.0),
      elevation: 2.0,
      child: Image.asset(
        posterUrl,
        fit: BoxFit.cover,
        width: width,
        height: height,
      ),
    );


  }
}
