import 'package:counter_7/page/drawer.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/dataBudget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Flutter Demo Home Page';

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

  // mengurangi counter
  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        // Menambahkan drawer menu
        drawer: buildDrawer(context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _counter % 2 == 0
                  ? // genap
                  const Text(
                      'GENAP',
                      style: TextStyle(color: Colors.red),
                    )
                  : const Text(
                      'GANJIL',
                      style: TextStyle(color: Colors.blue),
                    ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: _counter > 0 ? true : false,
                  child: FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                ),
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
