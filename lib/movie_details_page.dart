import 'package:flutter/material.dart';
import 'package:fluttermoviedetails/actor_scroller.dart';
import 'package:fluttermoviedetails/modeles.dart';
import 'package:fluttermoviedetails/movie_detail_header.dart';
import 'package:fluttermoviedetails/photo_scroller.dart';
import 'package:fluttermoviedetails/story_line.dart';

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
              child : Storyline(movie.storyline),
              ),

              PhotoScroller(movie.photoUrls),

              SizedBox(height: 20,),

              ActorScroller(movie.actors),

              SizedBox(height: 50,),

            ],
          )
      ),
    );
  }
}
