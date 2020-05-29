import 'package:flutter/material.dart';
import 'package:instagramuiredesign/status_list.dart';
import 'package:instagramuiredesign/style_guide.dart';

class StatusRow extends StatelessWidget {
  final List<StatusList> statusPeople = [
    StatusList(n: 'Ananya', iP: 'images/an.jpeg'),
    StatusList(n: 'Aakash', iP: 'images/ad.jpg'),
    StatusList(n: 'Shubhank', iP: 'images/sc.jpeg'),
    StatusList(n: 'Aryaa', iP: 'images/ap.jpg'),
    StatusList(n: 'Vanshika', iP: 'images/vl.jpg'),
    StatusList(n: 'Joana', iP: 'images/d.jpg'),
    StatusList(n: 'Nick', iP: 'images/d.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, top: 8.0,bottom: 8.0,right: 3.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 27.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('images/aa.jpg'),
                      ),
                      SizedBox(height: 5.0,),
                      Text('Add Story'),
                    ],
                  ),
                ),
                Positioned(
                  right: 3.0,
                  bottom: 20.0,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: kScaffoldBackgroundColor, width: 3.0),
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xFF496872),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 18.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: statusPeople.map((people) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.0, vertical: 8.0),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 27.0,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage(people.imagePath),
                      ),
                      SizedBox(height: 5.0,),
                      Text(people.name,textScaleFactor: 1.05,),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
