import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scorelist/presentation/home.dart';

class UpdateScore extends StatefulWidget{
  List<Person> people;
  Person person;
  UpdateScore(this.people,this.person);
  _UpdateScoreState createState() => _UpdateScoreState();
}

class _UpdateScoreState extends State<UpdateScore>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Score"),
      ),
    );
  }
}