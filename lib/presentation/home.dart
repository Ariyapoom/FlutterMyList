import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scorelist/route/routes.dart';
class Person {
  final String name;
  final int score;
  Person(this.name,this.score);
}

class HomePage extends StatelessWidget{
  List<Person> people = [
    Person("Poon", 77),
    Person("Keng", 85),
    Person("JayJay", 80),
    Person("jonh", 60)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My List"),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (BuildContext context,int index) {
          return Card(
            child: ListTile(
              title: Text(index.toString() + " " + people[index].name),
              trailing: Text(people[index].score.toString()),
              onTap: () =>{
                Navigator.of(context).pushNamed(AppRoutes.viewscore, arguments: {"people" : people, "person" :people[index]})
              },
            ),
          );
        }
      ),
    );
  }
}