import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  @override
  _Example2State createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  int _number = 0; //Agg '?' en caso de querer asignar valor null
  AppBar _appBar() {
    return AppBar(title: Text('Bootcamp Example 2'));
  }

  Widget _body() {
    return Container(
        child: Center(
      child: Text(
        'Number: $_number',
        style: TextStyle(
            fontSize: 30, color: Colors.red[900], fontWeight: FontWeight.bold),
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
//setState Dibuja nuevamente la pagina, no usar en async function o funciones que no sean instantaneas
    setState(() {
      _number++;
    });
  }

  void _decreasedNumber() {
    setState(() {
      _number--;
    });
  }
}
