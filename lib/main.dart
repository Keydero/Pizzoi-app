import 'package:flutter/material.dart';
import './screens/home.dart';

void main() => runApp(Pizzoi());

class Pizzoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.deepPurple, brightness: Brightness.light),
        home: HomePage());
  }
}
