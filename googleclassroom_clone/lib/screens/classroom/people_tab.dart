import 'package:flutter/material.dart';
import 'package:googleclassroom_clone/data/classrooms.dart';
import 'package:googleclassroom_clone/data/comments.dart';
import 'package:googleclassroom_clone/widgets/profile_tile.dart';

class PeopleTab extends StatefulWidget {
  @override
  _PeopleTabState createState() => _PeopleTabState();
}

class _PeopleTabState extends State<PeopleTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 30, left: 15, bottom: 10),
          child: Text(
            "Teachers",
            style: TextStyle(
                fontSize: 30, color: Colors.redAccent, letterSpacing: 1),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          width: MediaQuery.of(context).size.width - 30,
          height: 2,
          color: Colors.redAccent,
        ),
        Profile(
          name: classRoomList[0].creator,
        ),
        SizedBox(width: 30),
        Container(
          padding: EdgeInsets.only(top: 30, left: 15, bottom: 10),
          child: Text(
            "Classmates",
            style: TextStyle(
                fontSize: 30, color: Colors.redAccent, letterSpacing: 1),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          width: MediaQuery.of(context).size.width - 30,
          height: 2,
          color: Colors.redAccent,
        ),
        Expanded(
            child: ListView.builder(
                itemCount: commentList.length,
                itemBuilder: (context, int index) {
                  return Profile(
                    name: commentList[index].userName,
                  );
                }))
      ],
    );
  }
}
