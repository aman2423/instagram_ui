import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramuiredesign/post_detail.dart';
import 'package:instagramuiredesign/style_guide.dart';


class Posts extends StatelessWidget {
  final String instagramId;
  final String circleImage;
  final String postImage;

  const Posts({this.instagramId, this.circleImage, this.postImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Card(
        elevation: 0.0,
        color: kScaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 15.0,
                  backgroundImage: AssetImage(circleImage),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  instagramId,
                  style: kPeopleId,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                ),
                Icon(Icons.more_horiz),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
               height: MediaQuery.of(context).size.width*0.85,
                width: MediaQuery.of(context).size.width*0.9,
                child: Image.asset(
                  postImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: PostDetail(),
            )
          ],
        ),
      ),
    );
  }
}
