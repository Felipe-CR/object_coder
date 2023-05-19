//import 'package:flutter/material.dart';

class Group {
  String name;
  String images;
  String members;
  final Function? press;

  Group({
    required this.name,
    required this.images,
    required this.members,
    this.press,
  });
}

List<Group> group = [
  Group(
      name: "Grupo 55",
      images: "assets/images/Grupo.png",
      members: "15 Alumnos",
      press: () {},
  ),
  Group(
    name: "Grupo 66",
    images: "assets/images/Grupo.png",
    members: "10 Alumnos",
    press: () {},
  ),
  Group(
    name: "Grupo 40",
    images: "assets/images/Grupo.png",
    members: "8 Alumnos",
    press: () {},
  ),
  Group(
    name: "Grupo 80",
    images: "assets/images/Grupo.png",
    members: "10 Alumnos",
    press: () {},
  ),
];