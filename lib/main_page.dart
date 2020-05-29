import 'package:flutter/material.dart';
import 'package:instagramuiredesign/posts.dart';
import 'package:instagramuiredesign/status_row.dart';
import 'package:instagramuiredesign/style_guide.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Image.asset(
          'images/Instagram.png',
        ),
        centerTitle: true,
        leading: Icon(
          Icons.add_circle_outline,
          size: 25.0,
        ),
        actions: <Widget>[
          Icon(Icons.near_me),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            StatusRow(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Divider(
              thickness: MediaQuery.of(context).size.height * 0.003,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Posts(
              circleImage: 'images/vl.jpg',
              instagramId: 'Vanshika',
              postImage: 'images/ap.jpg',
            ),
            Divider(
              thickness: MediaQuery.of(context).size.height * 0.003,
            ),
            Posts(
              circleImage: 'images/jm.jpg',
              instagramId: 'Johny',
              postImage: 'images/sc.jpeg',
            ),
            Divider(
              thickness: MediaQuery.of(context).size.height * 0.003,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), title: Text('Add')),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), title: Text('Activity')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
        ],
     currentIndex: 0,unselectedItemColor: Colors.blueGrey,),
    );
  }
}
