import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  // final String name;
  // final String imageUrl;
  // Product(this.name, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/pizza.png'),
            Container(
              padding: EdgeInsets.all(10.00),
              child: Text('Details!'),
            ),
            RaisedButton(
              child: Text('GO BACK'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ));
  }
}
