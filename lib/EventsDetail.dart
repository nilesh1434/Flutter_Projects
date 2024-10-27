import 'package:flutter/material.dart';
import 'package:project1/EVENTS.dart';
import 'package:project1/events_data.dart';

class EventsDetail extends StatelessWidget {
  final EVENTS eVENTS;
  const EventsDetail({Key? key, required this.eVENTS}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(eVENTS.name),),
      body: Column(
        children: [
          // Image.network(eVENTS.image),
          // Text(eVENTS.description)
        ],
      ),
    );
  }
}
