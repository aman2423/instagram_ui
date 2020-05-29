import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, top: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.002),
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.comment),
                  onPressed: () {
                    print("Pressed");
                  }),
              SizedBox(width: MediaQuery.of(context).size.width * 0.002),
              Icon(Icons.near_me),
              SizedBox(width: MediaQuery.of(context).size.width * 0.12),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 3.0,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.014),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 3.0,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.014),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 3.0,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 3.0,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.01),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 3.0,
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.28),
              Icon(Icons.bookmark_border)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.015),
          Text(
            '21,973 Likes',
            textScaleFactor: 1.1,
          ),
          SizedBox(height: 5),
          Text(
            'View all 678 comments',
            style: TextStyle(color: Colors.blueGrey),
          ),
          SizedBox(height: 5),
          Text(
            '1 hr ago',
            style: TextStyle(color: Colors.blueGrey),
          )
        ],
      ),
    );
  }
}
