import 'package:counter_7/form_tugas8.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class DataBudgetPage extends StatefulWidget {
    const DataBudgetPage({super.key});
    @override
    State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Data Budget'),
            ),
            drawer: myDrawer(context),
      body: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        itemCount: judul.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            borderOnForeground: true,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ListTile(
                  title: Text(judul[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nominal[index]),
                      const SizedBox(width: 6),
                      Text(tipePilihan[index])
                    ],
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),

      ),
        );
    }
}