import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClassRooms {
  String className;
  String description;
  String creator;
  AssetImage bannerImg;
  Color uiColor;
  List<double> clrs = [];

  ClassRooms(
      {this.className,
      this.description,
      this.creator,
      this.bannerImg,
      this.clrs});
}

List<ClassRooms> classRoomList = [
  ClassRooms(
    className: "Bsc.cs Java",
    description: "second year",
    creator: "Sasikala selvaraj",
    bannerImg: AssetImage("Assets/Images/banner1.jpg"),
    clrs: [255, 233, 116, 57],
  ),
  ClassRooms(
    className: "Bsc.cs Data structure ",
    description: "second year",
    creator: "Michael raj",
    bannerImg: AssetImage("Assets/Images/banner2.jpg"),
    clrs: [255, 101, 237, 153],
  ),
  ClassRooms(
    className: "Bsc.cs Software project management",
    description: "second year",
    creator: "Archana",
    bannerImg: AssetImage("Assets/Images/banner3.jpg"),
    clrs: [255, 111, 27, 198],
  ),
  ClassRooms(
      className: "Bsc.cs C++",
      description: "first year",
      creator: "Anusree",
      bannerImg: AssetImage("Assets/Images/banner4.jpg"),
      clrs: [255, 0, 0, 0]),
  ClassRooms(
      className: "Bsc.cs Digital fundamental",
      description: "first year",
      creator: "Archana",
      bannerImg: AssetImage("Assets/Images/banner5.jpg"),
      clrs: [255, 102, 153, 204]),
  ClassRooms(
    className: "Photography",
    description: "first year",
    creator: "Photographer",
    bannerImg: AssetImage("Assets/Images/banner6.jpg"),
    clrs: [255, 111, 27, 198],
  ),
  ClassRooms(
    className: "Literature",
    description: "first year",
    creator: "Library",
    bannerImg: AssetImage("Assets/Images/banner7.jpg"),
    clrs: [255, 95, 139, 233],
  ),
  ClassRooms(
    className: "Music",
    description: "second year",
    creator: "violin",
    bannerImg: AssetImage("Assets/Images/banner8.jpg"),
    clrs: [255, 95, 139, 233],
  ),
  ClassRooms(
    className: "Bsc.cs Data structure ",
    description: "second year",
    creator: "Michael raj",
    bannerImg: AssetImage("Assets/Images/banner9.jpg"),
    clrs: [255, 101, 237, 153],
  ),
  ClassRooms(
      className: "Bsc.cs Software project management",
      description: "second year",
      creator: "Archana",
      bannerImg: AssetImage("Assets/Images/banner10.jpg"),
      clrs: [255, 102, 153, 204]),
  ClassRooms(
    className: "Bsc.cs C++",
    description: "first year",
    creator: "Anusree",
    bannerImg: AssetImage("Assets/Images/banner11.jpg"),
    clrs: [255, 95, 139, 233],
  ),
  ClassRooms(
      className: "Bsc.cs Digital fundamental",
      description: "first year",
      creator: "Archana",
      bannerImg: AssetImage("Assets/Images/banner12.jpg"),
      clrs: [255, 102, 153, 204]),
];
