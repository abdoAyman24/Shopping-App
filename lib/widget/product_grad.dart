import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/Models/Provider/product_provider.dart';
import 'package:shoping/widget/product_item.dart';

class ProductGrad extends StatelessWidget {
  const ProductGrad({super.key});

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(
      context,
    ).products;
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: productsData.length,
      itemBuilder: (context, index) {
        return ChangeNotifierProvider.value(
          value: productsData[index],
          child: const ProductItem(),
        );
      },
    );
  }
}
