import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoping/Models/Provider/prodct.dart';

class Products with ChangeNotifier {
  final List<Product> _products = [
    Product(
      id: 'd1',
      title: 'KICKBOOT JEAN',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories for men and women that enablesself-expression and empowers our customers to celebrate their individuality',
      price: 166,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/78/620284/3.jpg?5152',
    ),
    Product(
      id: 'd2',
      title: 'Hooded Denim Jacket',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories for men and women that enables self-expression and empowers our customersto celebrate their individuality',
      price: 400,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/20/341323/1.jpg?1783',
    ),
    Product(
      id: 'd3',
      title: 'Graphic Hoodie',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories for men and women that enables self-expression and  empowers our customers to celebrate their individuality',
      price: 550,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/33/010523/1.jpg?5579',
    ),
    Product(
      id: 'd4',
      title: 'Button-Up Shirt',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories formen and women that enables self-expression and empowers our customers to celebrate their individuality.',
      price: 350,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/44/815784/1.jpg?3023',
    ),
    Product(
      id: 'd5',
      title: 'KICKBOOT JEAN',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories for men and women that enablesself-expression and empowers our customers to celebrate their individuality',
      price: 166,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/78/620284/3.jpg?5152',
    ),
    Product(
      id: 'd6',
      title: 'Hooded Denim Jacket',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories for men and women that enables self-expression and empowers our customersto celebrate their individuality',
      price: 400,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/20/341323/1.jpg?1783',
    ),
    Product(
      id: 'd7',
      title: 'Graphic Hoodie',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories for men and women that enables self-expression and  empowers our customers to celebrate their individuality',
      price: 550,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/33/010523/1.jpg?5579',
    ),
    Product(
      id: 'd8',
      title: 'Button-Up Shirt',
      description:
          'American Eagle has offered an assortment of specialty apparel and accessories formen and women that enables self-expression and empowers our customers to celebrate their individuality.',
      price: 350,
      imageUrl:
          'https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/44/815784/1.jpg?3023',
    ),
  ];

  bool showFavoritr = false;
  List<Product> get products {
    if (showFavoritr) {
      return _products.where((productFav) {
        return productFav.isFavorite;
      }).toList();
    }
    return [..._products];
  }

  void changeToFavorite() {
    showFavoritr = true;
    notifyListeners();
  }

  void changeToAll() {
    showFavoritr = false;
    notifyListeners();
  }

  Product findProductById(String id) {
    return _products.firstWhere(
      (product) {
        return product.id == id;
      },
    );
  }
}
