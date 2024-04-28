import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping/Models/Provider/product_provider.dart';
import 'package:shoping/routes/product_detail_screen.dart';
import 'package:shoping/routes/productscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.blue),
        ),
        routes: {
          '/': (context) => ProductHomeScreen(),
          ProductHomeScreen.routeName: (context) => ProductHomeScreen(),
          ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
