import 'package:flutter/material.dart';
import './product_manager.dart';

void main() => runApp(Pizzoi());

class Pizzoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('The Pizzoi'),
          ),
          body: ProductManager()),
    );
  }
}
