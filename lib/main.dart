import 'package:flutter/material.dart';

void main() => runApp(Count());

class MyApp extends State<Count> {
  var myValue = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          child: Center(
              child: Text(
        '2 * $myValue = ${myValue * 2}',
        textAlign: TextAlign.justify,
        overflow: TextOverflow.fade,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
      ))),
      appBar: AppBar(
        title: Text('Table of two '),
        backgroundColor: Colors.green,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myValue = myValue + 1;
          });
        },
        child: Icon(Icons.multiline_chart),
        backgroundColor: Colors.green,
      ),
    ));
  }
}

class Count extends StatefulWidget {
  createState() {
    return MyApp();
  }
}
