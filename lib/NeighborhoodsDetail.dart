import 'package:flutter/material.dart';
import 'package:project1/NEIGHBORHOODS.dart';
import 'package:project1/neighborhoods_data.dart';

class NeighborhoodsDetail extends StatelessWidget {
  final NEIGHBORHOODS nEIGHBORHOODS;
  const NeighborhoodsDetail({Key? key, required this.nEIGHBORHOODS})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(nEIGHBORHOODS.name),),
      body: Column(
        children: [
          // Image.network(nEIGHBORHOODS.image),
          // Text(nEIGHBORHOODS.description)
        ],
      ),
    );
  }
}
