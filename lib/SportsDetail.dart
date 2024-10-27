import 'package:flutter/material.dart';
import 'package:project1/SPORTS.dart';
import 'package:project1/sports_data.dart';

class SportsDetail extends StatelessWidget {
  final SPORTS sPORTS;
  const SportsDetail({Key? key, required this.sPORTS}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(sPORTS.name),),
      body: Column(
        children: [
          // Image.network(sPORTS.image),
          // Text(sPORTS.description)
        ],
      ),
    );
  }
}
