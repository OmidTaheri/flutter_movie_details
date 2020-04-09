import 'package:flutter/material.dart';
import 'package:fluttermoviedetails/modeles.dart';
import 'package:fluttermoviedetails/movie_detail_header.dart';

class MovieDetailsPage extends StatelessWidget {
  final Movie movie;

  MovieDetailsPage(this.movie);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              MovieDetailHeader(movie),

              Padding(padding:EdgeInsets.all(20) ,
              child : Storyline(),
              ),

              PhotoScroller(),

              SizedBox(height: 20,),

              ActorScroller(),

              SizedBox(height: 50,),

            ],
          )
      ),
    );
  }
}
