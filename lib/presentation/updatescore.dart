import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:scorelist/presentation/home.dart';

class UpdateScore extends StatefulWidget {
  List<Person> people;
  Person person;
  UpdateScore(this.people, this.person);
  _UpdateScoreState createState() => _UpdateScoreState();
}

class _UpdateScoreState extends State<UpdateScore> {
  final myController_1 = TextEditingController();
  final myController_2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Edit Score"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    child: Text("Name"),
                    width: 60,
                  ),
                  Container(
                    width: 100,
                    child: TextField(
                      controller: myController_1..text = widget.person.name,
                      onChanged: (value) => {widget.person.name = value},
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                readOnly: true,
                textAlign: TextAlign.center,
                controller: myController_2
                  ..text = widget.person.score.toString(),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                        child: Text("1"),
                        onPressed: () {
                          setState(() {
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '1');
                          });
                        }),
                    RaisedButton(
                        child: Text("2"),
                        onPressed: () {
                          setState(() {
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '2');
                          });
                        }),
                    RaisedButton(
                        child: Text("3"),
                        onPressed: () {
                          setState(() {
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '3');
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
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '4');
                          });
                        }),
                    RaisedButton(
                        child: Text("5"),
                        onPressed: () {
                          setState(() {
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '5');
                          });
                        }),
                    RaisedButton(
                        child: Text("6"),
                        onPressed: () {
                          setState(() {
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '6');
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
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '7');
                          });
                        }),
                    RaisedButton(
                        child: Text("8"),
                        onPressed: () {
                          setState(() {
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '8');
                          });
                        }),
                    RaisedButton(
                        child: Text("9"),
                        onPressed: () {
                          setState(() {
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '9');
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
                            widget.person.score =
                                int.parse(widget.person.score.toString() + '0');
                          });
                        }),
                    RaisedButton(
                        child: Text("OK"),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
