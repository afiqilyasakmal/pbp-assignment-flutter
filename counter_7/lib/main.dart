import 'package:counter_7/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
// MyApp merupakan widget stateless
class MyApp extends StatelessWidget { // MyApp merupakan root dari widget tree, sehingga membangun semua widget di bawahnya.
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  // MyApp override method build(BuildContext). Argumen BuildContext adalah argumen yg berguna buat interact sm widget tree.
  Widget build(BuildContext context) { // mendeskripsikan tampilan UI: membangun widget subtree di bawahnya.
    return MaterialApp( // DIRECT CHILD dari MyApp
      title: 'Program Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}
// MyHomePage adalah stateful widget sehingga didefinisikan juga dengan State object yaitu _MyHomePageState
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  // fungsi buat decrement counter
  void _decrementCounter() {
    setState(() {
      if (_counter < 1) {
        _counter = _counter;
      } else {
        _counter--;
      }
    });
  }
  // menampilkan teks tergantung state nya lagi ganjil apa genap
  Widget teksGanjilGenap() {
    if (_counter % 2 == 0) {
      return const Text('GENAP', style: TextStyle(color: Colors.blue));
    } else {
      return const Text('GANJIL', style: TextStyle(color: Colors.red));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: myDrawer(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            teksGanjilGenap(),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Visibility(
              visible: _counter != 0,
              child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  child: const Icon(Icons.remove)
              ),
            ),
            FloatingActionButton(
              onPressed: _incrementCounter,
              child: const Icon(Icons.add),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
