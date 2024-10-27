import 'package:flutter/material.dart';
import 'package:project1/NEIGHBORHOODS.dart';
import 'package:project1/EVENTS.dart';
import 'package:project1/SPORTS.dart';
import 'package:project1/Square.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',  
      theme: ThemeData(
        backgroundColor: Colors.green,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: Colors.green,
          appBar: AppBar(
            title: Text('Welcome to Chicago'),
            centerTitle: true,

            bottom: TabBar(
              tabs: [
                Tab(text: 'NEIGHBORHOODS'),
                Tab(text: 'EVENTS'),
                Tab(text: 'SPORTS'),
              ],
            ),

            backgroundColor: Colors.orangeAccent,
            // primary: AssetImage('assets/chicago_city.jpg'),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
          ),
          body: TabBarView(
            children: [
              NEIGHBORHOODS(),
              EVENTS(),
              SPORTS(),
            ],
          )

          // body: Center(
          //   child: Image(
          //     image: AssetImage('assets/chicago_city'),
          //   )
          // )
          ),
    );
  }
}
