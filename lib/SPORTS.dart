import 'package:flutter/material.dart';
import 'package:project1/SportsDetail.dart';
import 'package:project1/Square.dart';
import 'package:project1/sports_data.dart';

class SPORTS extends StatelessWidget {
  static List<String> sportsTeam = [
    'Chicago Bears',
    'Chicago Bulls',
    'White Sox'
  ];

  static List sportsUrl = [
    'https://st4.depositphotos.com/1006214/22880/i/600/depositphotos_228809680-stock-photo-irvine-california-august-2018-mini.jpg',
    'https://st2.depositphotos.com/6962450/11755/i/600/depositphotos_117553234-stock-photo-the-emblem-of-the-basketball.jpg',
    'https://st3.depositphotos.com/1022914/14063/i/600/depositphotos_140631434-stock-photo-close-up-of-waving-flag.jpg'
  ];

  final List<SportsData> sports_data = List.generate(
      sportsTeam.length,
      (index) => SportsData('${sportsTeam[index]}', '${sportsUrl[index]}',
          '${sportsTeam[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chicago Sports Teams'),
        ),
        body: ListView.builder(
            itemCount: sports_data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(sports_data[index].name),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 20,
                      child: Image.network(sports_data[index].image),
                    ),
                  ),
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SportsDetail(sPORTS: sports_data[index],)));
                  },
                ),
              );
            }));
  }
}
