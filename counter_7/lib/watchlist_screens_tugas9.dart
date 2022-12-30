import 'package:flutter/material.dart';
import 'fetch_watchlist_tugas9.dart';
import './watchlist_item_tugas9.dart';

class WatchlistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Watchlist"),
      ),
      body: FutureBuilder(
        future: fetchWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Tidak ada watchlist",
                    style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return GridView.builder(
                padding: const EdgeInsets.all(25),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, index) => WatchlistItem(
                    filmWatched: snapshot.data![index].fields.filmWatched, 
                    filmTitle: snapshot.data![index].fields.filmTitle, 
                    filmRating: snapshot.data![index].fields.filmRating.toString(), 
                    filmReleaseDate: snapshot.data![index].fields.filmReleaseDate, 
                    filmReview: snapshot.data![index].fields.filmReview,
                  ),
              );
            }
          }
        },
      )
    );
  }
}