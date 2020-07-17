import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;

  // ProductDetailScreen(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final productsData = Provider.of<ProductsProvider>(
      context,
      listen: false,
    );

    final detailProduct = productsData.findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(detailProduct.title),
      ),
    );
  }
}