import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scorelist/presentation/home.dart';

class AddNewPerson extends StatefulWidget {
  List<Person> people;
  Person person;
  AddNewPerson(people) {
    this.people = people;
    person = new Person("", 0);
  }
  _AddNewPersonState createState() => _AddNewPersonState();
}

class _AddNewPersonState extends State<AddNewPerson> {
  final myControllerName = TextEditingController();
  final myControllerScore = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Person"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Name "),
                    width: 60,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: myControllerName,
                      onChanged: (value) {
                        widget.person.name = value;
                      },
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("Score "),
                    width: 60,
                  ),
                  Container(
                    width: 300,
                    child: TextField(
                      controller: myControllerScore
                        ..text = widget.person.score.toString(),
                      readOnly: true,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                          child: Text("1"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '1');
                            });
                          }),
                      RaisedButton(
                          child: Text("2"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '2');
                            });
                          }),
                      RaisedButton(
                          child: Text("3"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '3');
                            });
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                          child: Text("4"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '4');
                            });
                          }),
                      RaisedButton(
                          child: Text("5"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '5');
                            });
                          }),
                      RaisedButton(
                          child: Text("6"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '6');
                            });
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                          child: Text("7"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '7');
                            });
                          }),
                      RaisedButton(
                          child: Text("8"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '8');
                            });
                          }),
                      RaisedButton(
                          child: Text("9"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '9');
                            });
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton(
                          child: Text("CLR"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = 0;
                            });
                          }),
                      RaisedButton(
                          child: Text("0"),
                          onPressed: () {
                            setState(() {
                              widget.person.score = int.parse(
                                  widget.person.score.toString() + '0');
                            });
                          }),
                      RaisedButton(
                          child: Text("OK"),
                          onPressed: () {
                            widget.people.add(widget.person);
                            Navigator.pop(context);
                          }),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
