import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scorelist/presentation/home.dart';
import 'package:scorelist/route/routes.dart';

class ViewScore extends StatefulWidget{
  List<Person> people;
  Person person;
  ViewScore(this.people,this.person);
  _ViewScoreState createState() => _ViewScoreState();
}

class _ViewScoreState extends State<ViewScore>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Score"),
      ),
      body: Stack(
        children: [
          Card(
            child: Container(
              child: Center(
                child: ListTile(
                        title: Text(widget.person.name),
                        trailing: Text(widget.person.score.toString()),
                ),
              ),
              height: 80,  
            )
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () =>{
                    Navigator.of(context).pushNamed(AppRoutes.updatescore, arguments: {"people" : widget.people, "person" :widget.person})
                  },
                )
              ],
            ),
          ),
        ],
      ),    
    );
  }
}