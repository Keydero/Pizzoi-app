import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; // final == Not changeable
  Products(this.products); // assign the injected products to products
  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
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
    );
  }
}
