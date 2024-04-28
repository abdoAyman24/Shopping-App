import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/Models/Provider/prodct.dart';

import 'package:shoping/routes/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final product = context.read<Product>();
    print('ceate build');
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black38,
          title: Text(product.title),
          trailing: Consumer<Product>(
            builder: (context, pr, child) {
              return IconButton(
                onPressed: () {
                  product.changeFavorite();
                },
                icon: Icon(
                  product.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: product.isFavorite ? Colors.red : Colors.white,
                ),
              );
            },
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: product.id);
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
