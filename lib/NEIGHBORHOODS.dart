import 'package:flutter/material.dart';
import 'package:project1/NeighborhoodsDetail.dart';
import 'package:project1/Square.dart';
import 'package:project1/neighborhoods_data.dart';

class NEIGHBORHOODS extends StatelessWidget {
  static List<String> neighborhoods = [
    'Lincoln Park',
    'Fulton Market',
    'River North'
  ];

  static List neighborhoodsUrl = [
    'https://media.timeout.com/images/105645653/750/422/image.jpg',
    'https://cdn.vox-cdn.com/thumbor/NTStm2FDiD8aSZ_w6ZgwIZftfLk=/540x440:3490x2321/1200x675/filters:focal(1681x1192:2239x1750)/cdn.vox-cdn.com/uploads/chorus_image/image/65879138/shutterstock_1395061058.0.jpg',
    'https://thekittchen.com/wp-content/uploads/2020/06/Chicago-Loop-4.jpg'
  ];

  final List<NeighborhoodsData> neighborhoods_data = List.generate(
      neighborhoods.length,
      (index) => NeighborhoodsData(
          '${neighborhoods[index]}',
          '${neighborhoodsUrl[index]}',
          '${neighborhoods[index]} Description...'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chicago Neighborhoods'),
        ),
        body: ListView.builder(
            itemCount: neighborhoods_data.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(neighborhoods_data[index].name),
                  leading: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    child: CircleAvatar(
                      radius: 20,
                      child: Image.network(neighborhoods_data[index].image),
                    ),
                  ),
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NeighborhoodsDetail(nEIGHBORHOODS: neighborhoods_data[index],)));
                  },
                ),
              );
            }));
  }
}
