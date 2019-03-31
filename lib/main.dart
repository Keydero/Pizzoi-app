import 'package:flutter/material.dart';

void main() => runApp(Pizzoi());

class Pizzoi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createElement
    return _PizzoiState();
  }
}

class _PizzoiState extends State<Pizzoi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('The Pizzoi'),
        ),
        body: Column(children: []),
      ),
    );
  }
}
