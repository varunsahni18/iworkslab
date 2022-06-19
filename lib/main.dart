import 'package:flutter/material.dart';
import 'package:iworkslab/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iWorksLabShop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue)
            .copyWith(secondary: Colors.red),
      ),
      home: ProductsOverviewScreen(),
    );
  }
}
