import 'package:flutter/material.dart';
import 'package:project1/EventsDetail.dart';
import 'package:project1/Square.dart';
import 'package:project1/events_data.dart';

class EVENTS extends StatelessWidget {
  static List<String> events = [
    'Lollapalooza',
    'Chicago Marathon',
    'Air and Water Show'
  ];

  static List eventsUrl = [
    'https://substreammagazine.com/wp-content/uploads/2022/03/Lollapalooza-2022.jpg',
    'https://assets-chicagomarathon-com.s3.amazonaws.com/wp-content/uploads/2022/06/Apply.jpg',
    'https://patch.com/img/cdn20/users/24890138/20210621/054230/styles/patch_image/public/14___21174157060.jpg'
  ];

  final List<EventsData> events_data = List.generate(
      events.length,
      (index) => EventsData('${events[index]}', '${eventsUrl[index]}',
          '${events[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chicago Events'),
        ),
        body: ListView.builder(
            itemCount: events_data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(events_data[index].name),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 20,
                      child: Image.network(events_data[index].image),
                    ),
                  ),
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>EventsDetail(eVENTS: events_data[index])));
                  },
                ),
              );
            }));
  }
}
