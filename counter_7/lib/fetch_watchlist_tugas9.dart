import 'dart:convert';
import 'package:counter_7/model/watchlist_tugas9.dart';
import 'package:http/http.dart' as http;

Future<List<Watchlist>> fetchWatchList() async {
  var url =
      Uri.parse('http://localhost:8000/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<Watchlist> listWatchList = [];
  for (var d in data) {
    if (d != null) {
      listWatchList.add(Watchlist.fromJson(d));
    }
  }

  return listWatchList;
}