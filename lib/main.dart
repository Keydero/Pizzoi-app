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
  List<String> _products = ['Pizza Tester'];

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
          Column(
            children: _products
                .map(
                  (product) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/images/pizza.png'),
                            Text(product)
                          ],
                        ),
                      ),
                )
                .toList(),
          )
        ]),
      ),
    );
  }
}
