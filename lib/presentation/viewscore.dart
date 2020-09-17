import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scorelist/presentation/home.dart';
import 'package:scorelist/route/routes.dart';

class ViewScore extends StatefulWidget {
  List<Person> people;
  Person person;
  Person next;
  bool visible;
  bool visiblenext;
  ViewScore(people, person) {
    this.people = people;
    this.person = person;
    if (this.people.indexOf(person) - 1 >= 0) {
      this.next = this.people[this.people.indexOf(person) - 1];
      visible = true;
      visiblenext = true;
    } else {
      this.next = person;
      visible = false;
      visiblenext = false;
    }
  }
  _ViewScoreState createState() => _ViewScoreState();
}

class _ViewScoreState extends State<ViewScore> {
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
            height: 120,
          )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => {
                    Navigator.of(context).pushNamed(AppRoutes.updatescore,
                        arguments: {
                          "people": widget.people,
                          "person": widget.person
                        }).then((value) {
                      Navigator.pop(context);
                    })
                  },
                )
              ],
            ),
          ),
          Visibility(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Visibility(
                    child: Card(
                      child: ListTile(
                        title: Text("Next Person"),
                        trailing: Icon(Icons.arrow_forward),
                        onTap: () {
                          findnextname();
                        },
                      ),
                    ),
                    visible: widget.visible,
                  ),
                  Card(
                      child: Container(
                    alignment: Alignment.center,
                    child: ListTile(
                      title: Text(widget.next.name),
                      trailing: Text(widget.next.score.toString()),
                    ),
                    height: 120,
                  )),
                ],
              ),
            ),
            visible: widget.visiblenext,
          )
        ],
      ),
    );
  }

  findnextname() {
    setState(() {
      if (widget.people.indexOf(widget.next) - 1 >= 0) {
        widget.next = widget.people[widget.people.indexOf(widget.next) - 1];
      } else {
        widget.visible = false;
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Can't go Next Person"),
              content: Text(widget.next.name + " is a last person"),
            );
          },
        );
      }
    });
  }
}
