import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/example_1/example_1.dart';
import 'package:flutter_bootcamp/example_2/example_2_page.dart';
import 'package:flutter_bootcamp/excercise_1/excercise_1_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueGrey[900],
          accentColor: Colors.red[900],
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Theme.of(context).primaryColor)),
      home: Excercise1page(),
    );
  }
}
