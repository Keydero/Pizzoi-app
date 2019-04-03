import 'package:flutter/material.dart';
// import './screens/product.dart';

class Products extends StatelessWidget {
  final List<String> products; // final == Not changeable
  Products([this.products = const []]) {
    print('HELLO PRODUCT WIDGET');
  } // assign the injected products to products

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/pizza.png'),
          Text(products[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductsList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      return productCard = Center(
        child: Text('Oh man, 0 products over here'),
      );
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductsList();
  }
}
