import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/Models/Provider/product_provider.dart';
import 'package:shoping/widget/product_grad.dart';

enum filterOption { favorite, all }

// ignore: must_be_immutable
class ProductHomeScreen extends StatelessWidget {
  const ProductHomeScreen({super.key});
  static final routeName = '/product_Home_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          title: const Text('Shop App'),
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                if (value == filterOption.favorite) {
                  Provider.of<Products>(context, listen: false)
                      .changeToFavorite();
                } else {
                  Provider.of<Products>(context, listen: false).changeToAll();
                }
              },
              itemBuilder: (contx) {
                return const [
                  PopupMenuItem(
                    value: filterOption.favorite,
                    child: Text('Favorite'),
                  ),
                  PopupMenuItem(
                    value: filterOption.all,
                    child: Text('All'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: const ProductGrad());
  }
}
