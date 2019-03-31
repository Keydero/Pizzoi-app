import 'package:flutter/material.dart';

void main() => runApp(Home());

class Pizzoi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createElement
    return _PizzoiState();
  }
}

class _PizzoiState extends State<Pizzoi> {
  List<String> products = ['Pizza Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pizzoi'),
        ),
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text('Ajouter un produit'),
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/pizza.png'),
                Text('Les pizzois!')
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
