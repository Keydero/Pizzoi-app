import 'package:flutter/material.dart';
import './screens/product.dart';

class Products extends StatelessWidget {
  final List<Map> products; // final == Not changeable
  final Function deleteProduct;
  Products(this.products, {this.deleteProduct}) {
    print('HELLO PRODUCT WIDGET');
  } // assign the injected products to products
  void _emitDelete(response, index) {
    return response == true ? deleteProduct(index) : null;
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imageUrl']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Product(
                              products[index]['title'],
                              products[index]['imageUrl']),
                        ),
                      ).then((response) => _emitDelete(response, index))
                    },
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
