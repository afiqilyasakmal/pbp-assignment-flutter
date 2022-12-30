import 'package:flutter/material.dart';
import './watchlist_detail_tugas9.dart';

class WatchlistItem extends StatelessWidget {
  final bool filmWatched;
  final String filmTitle;
  final String filmRating;
  final String filmReleaseDate;
  final String filmReview;

  WatchlistItem({
      required this.filmWatched,
      required this.filmTitle,
      required this.filmRating,
      required this.filmReleaseDate,
      required this.filmReview, 
  }  
    );

  void selectItem(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return WatchlistDetailScreen(filmWatched, filmTitle, filmRating, filmReleaseDate, filmReview);
        },
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectItem(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(filmTitle, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
        decoration: BoxDecoration(
          boxShadow: const [
                        BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0
                        )
                        ],
          gradient: LinearGradient(
            colors: [Colors.white.withOpacity(1), Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      )
    );
  }


}