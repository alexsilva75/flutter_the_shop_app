import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_shop_app/providers/product.dart';
import '../providers/products_provider.dart';
import '../widgets/product_item.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavoritesOnly;

  ProductsGrid(this.showFavoritesOnly);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final loadedProducts =
        showFavoritesOnly ? productsData.favoriteItems : productsData.items;

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) {
        return ChangeNotifierProvider.value(
          //create: (ctx) => loadedProducts[i],
          value: loadedProducts[i],
          child: ProductItem(
              // loadedProducts[i].id,
              // loadedProducts[i].title,
              // loadedProducts[i].imageUrl,
              ),
        );
      },
      itemCount: loadedProducts.length,
      padding: const EdgeInsets.all(10.0),
    );
  }
}
