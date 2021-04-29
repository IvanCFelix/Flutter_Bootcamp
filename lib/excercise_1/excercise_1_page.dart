import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Excercise1page extends StatefulWidget {
  @override
  _Excercise1pageState createState() => _Excercise1pageState();
}

class _Excercise1pageState extends State<Excercise1page> {
  @override
  int _number = 0;
  AppBar _appBar() {
    return AppBar(title: Text('Bootcamp Excersise 1'));
  }

  Widget _body() {
    return Container(
        child: Center(
      child: Text(
        'Number: $_number',
        style: TextStyle(
            fontSize: 30,
            // Valid if is pair or not
            color: _number % 2 == 0 ? Colors.red : Colors.blue,
            fontWeight: FontWeight.bold),
      ),
    ));
  }

  Widget _fabIncrement() {
    return FloatingActionButton.extended(
        onPressed: () {
          _incrementNumber();
        },
        label: Text('Increment'),
        icon: Icon(Icons.exposure_plus_1));
  }

  Widget _fabDecreased() {
    return FloatingActionButton.extended(
        onPressed: () {
          _decreasedNumber();
        },
        label: Text('Decreased'),
        icon: Icon(Icons.exposure_minus_1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: _body(),
        floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
          _fabIncrement(),
          SizedBox(
            height: 10,
          ),
          _fabDecreased()
        ]));
  }

  void _incrementNumber() {
    _number++;
    setState(() {});
  }

  void _decreasedNumber() {
    _number--;
    setState(() {});
  }
}
