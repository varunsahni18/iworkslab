import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';
class ProductsOverviewScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('iWorksLab Shop')),
      backgroundColor: Colors.blue[50],
      body: ProductsGrid(),
    );
  }
}



