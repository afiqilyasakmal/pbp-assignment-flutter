import 'package:flutter/material.dart';

class WatchlistDetailScreen extends StatelessWidget {
  final bool filmWatched;
  final String filmTitle;
  final String filmRating;
  final String filmReleaseDate;
  final String filmReview;

  WatchlistDetailScreen(
    this.filmWatched,
    this.filmTitle,
    this.filmRating,
    this.filmReleaseDate,
    this.filmReview
  );

  

  @override
  Widget build(BuildContext context) {
    String status = "";
    if (filmWatched) {
      status += "Watched";
    } else {
      status += "Not watched yet";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  filmTitle,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            Row(
                children: [
                  Text(
                    "Release Date: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(filmReleaseDate),
                ],
              ),
            Row(
                children: [
                  Text(
                    "Rating: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(filmRating),
                ],
              ),
            Row(
                children: [
                  Text(
                    "Status: ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(status),
                ],
              ),
            Row(
                children: [
                  Text(
                    "Review:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(filmReview),
                ],
              ),
          ],)
      )
    );
  }
}