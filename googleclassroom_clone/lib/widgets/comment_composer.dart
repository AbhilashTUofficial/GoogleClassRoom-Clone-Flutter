import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:googleclassroom_clone/data/comments.dart';

class CommentComposer extends StatefulWidget {
  @override
  _CommentComposerState createState() => _CommentComposerState();
}

class _CommentComposerState extends State<CommentComposer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: commentList.length,
            itemBuilder: (context, int index) {
              return Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 0)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10),
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage("${commentList[index].userDp}"),
                              ),
                              SizedBox(width: 10),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      commentList[index].userName,
                                      style: TextStyle(),
                                    ),
                                    Text(
                                      commentList[index].date,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ]),
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          )
                        ],
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width - 40,
                          margin:
                              EdgeInsets.only(left: 15, top: 15, bottom: 10),
                          child: Text(commentList[index].comment)),
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 40,
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1, color: Colors.grey[300]))),
                        child: Text(
                          "     Add class comment",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      )
                    ],
                  ));
            }));
  }
}
