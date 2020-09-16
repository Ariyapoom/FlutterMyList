import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scorelist/route/routes.dart';

class Person {
  String name;
  int score;
  Person(this.name, this.score);
}

class HomePage extends StatefulWidget {
  List<Person> people = [
    Person("Poon", 77),
    Person("Keng", 85),
    Person("JayJay", 80),
    Person("jonh", 60)
  ];
  HomePage() {
    this.people.sort((a, b) => b.score.compareTo(a.score));
  }
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My List"),
      ),
      body: ListView.builder(
          itemCount: widget.people.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(index.toString() + " " + widget.people[index].name),
                trailing: Text(widget.people[index].score.toString()),
                onTap: () => {
                  Navigator.of(context).pushNamed(AppRoutes.viewscore,
                      arguments: {
                        "people": widget.people,
                        "person": widget.people[index]
                      }).then((value) {
                    setState(() {
                      widget.people.sort((a, b) => b.score.compareTo(a.score));
                    });
                  })
                },
              ),
            );
          }),
    );
  }
}
