import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  ProductControl(this.addProduct);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => addProduct(
          {'title': 'Pizza Oriental', 'imageUrl': 'assets/images/pizza.png'}),
      child: Text('Ajouter un produit'),
    );
  }
}
