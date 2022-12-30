import 'package:counter_7/form_tugas8.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/data_tugas8.dart';
import 'watchlist_screens_tugas9.dart';

Widget myDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: 
      [
         ListTile(
            title: const Text("Program Counter"),
            onTap: () {
              // Route menu ke halaman form
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: "counter_7")),
              );
            },
          ),
          ListTile(
            title: const Text("Tambah Budget"),
            onTap: () {
              // Route menu ke halaman form
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HalamanForm()),
              );
            },
          ),
          ListTile(
            title: const Text("Data Budget"),
            onTap: () {
              // Route menu ke halaman form
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DataBudgetPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Data Budget"),
            onTap: () {
              // Route menu ke halaman form
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WatchlistScreen()),
              );
            },
          ),
      ],)
  );
}