import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(Pizzoi());

class Pizzoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, brightness: Brightness.light),
      home: Scaffold(
          appBar: AppBar(
            title: Text('The Pizzoi'),
          ),
          body: ProductManager('Pizzoi Tester! R')),
    );
  }
}
