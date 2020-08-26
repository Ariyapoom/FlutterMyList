
import 'package:flutter/material.dart';
import 'package:scorelist/presentation/home.dart';
import 'package:scorelist/presentation/updatescore.dart';
import 'package:scorelist/presentation/viewscore.dart';
import 'package:scorelist/route/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My List",
      routes: {
        AppRoutes.home : (context)=> HomePage(),
      },
      onGenerateRoute: _createRouteWithParam,
    );
  }
}

Route _createRouteWithParam(RouteSettings settings){
  if(settings.name == AppRoutes.viewscore){
    final Map args = settings.arguments;
    return MaterialPageRoute(
      builder: (context){
        return ViewScore(args["people"], args["person"]);
      }
    );
  }
  if(settings.name == AppRoutes.updatescore){
    final Map args = settings.arguments;
    return MaterialPageRoute(
      builder: (context) {
        return UpdateScore(args["people"], args["person"]);
      },
    );
  }
}

