import 'package:flutter/material.dart';
import 'package:googleclassroom_clone/data/classworks.dart';

class ClassWork extends StatefulWidget {
  @override
  _ClassWorkState createState() => _ClassWorkState();
}

class _ClassWorkState extends State<ClassWork> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: classWorkList.length,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.redAccent),
                    child: Icon(
                      Icons.wallpaper,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        classWorkList[index].topic,
                        style: TextStyle(letterSpacing: 1),
                      ),
                      Text(
                        classWorkList[index].dateTime,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
