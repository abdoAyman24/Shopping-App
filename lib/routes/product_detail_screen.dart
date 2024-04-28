import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/Models/Provider/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  static const routeName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    final String productId =
        ModalRoute.of(context)!.settings.arguments as String;
    final product = context.read<Products>().findProductById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: LayoutBuilder(
        builder: (context, constrain) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  width: constrain.maxWidth * 0.75,
                  height: constrain.maxHeight * 0.4,
                  product.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: constrain.maxHeight * 0.02,
              ),
              Text(
                '\$  ${product.price}',
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: constrain.maxHeight * 0.02,
              ),
              Text(
                product.description,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          );
        },
      ),
    );
  }
}
