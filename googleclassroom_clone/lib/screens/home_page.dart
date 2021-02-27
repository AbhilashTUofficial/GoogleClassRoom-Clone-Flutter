import 'package:flutter/material.dart';
import 'package:googleclassroom_clone/data/classrooms.dart';

import 'class_room_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          leading: Icon(Icons.menu, color: Colors.black87),
          title: Text(
            "Google Classroom",
            style: TextStyle(
                color: Colors.black, fontFamily: "Roboto", fontSize: 22),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.black87,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black87,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: ListView.builder(
            itemCount: classRoomList.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => ClassRoomPage(
                          uiColor: classRoomList[index].uiColor,
                          className: classRoomList[index].className,
                          bannerImg: classRoomList[index].bannerImg,
                        ))),
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.orange,
                      ),
                      child: Image(
                        image: classRoomList[index].bannerImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 30),
                      width: 220,
                      child: Text(
                        classRoomList[index].className,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 58, left: 30),
                      child: Text(
                        classRoomList[index].description,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 125, left: 30),
                      child: Text(
                        classRoomList[index].creator,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                            letterSpacing: 1),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 370),
                      child: IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        splashColor: Colors.white54,
                        onPressed: () {},
                        iconSize: 25,
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
