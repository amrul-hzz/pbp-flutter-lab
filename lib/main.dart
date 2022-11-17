import 'package:flutter/material.dart';
import 'package:tugas_flutter_pbp/budget.dart';
import 'package:tugas_flutter_pbp/drawer.dart';
import 'package:tugas_flutter_pbp/main.dart';
import 'package:tugas_flutter_pbp/add_budget.dart';
import 'package:tugas_flutter_pbp/data_budget.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counter_7', //program title
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'), // title that shows in app
    );
  }
}

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

  void _decrementCounter(){
    if (_counter == 0) return;
    setState((){
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      drawer: const MyDrawer(),

      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // changes text based on counter
            if(_counter % 2 == 0) ...[
              const Text(
                'GENAP',
                style: TextStyle(
                  color: Colors.red,
                ) 
              )
            ]
            else ...[
              const Text(
                'GANJIL',
                style: TextStyle(
                  color: Colors.blue,
                ) 
              )
            ],

            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 30),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // only show decrement button when counter is not zero
              if (_counter > 0) ...[
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ), 
              ],

              Expanded(child: Container()),

              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ), 
            ]
        )
      ),  
    );
  }
}
