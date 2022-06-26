import 'package:flutter/material.dart';
import 'package:iworkslab/screens/products_overview_screen.dart';
import 'package:iworkslab/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import './providers/products.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'iWorksLabShop',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue)
              .copyWith(secondary: Colors.red),
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => const ProductDetailScreen()
        },
      ),
    );
  }
}
