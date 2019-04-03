import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products; // final == Not changeable
  Products(this.products); // assign the injected products to products

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/pizza.png'),
          Text(products[index])
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
