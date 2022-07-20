// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:iworkslab/constants.dart';
import 'package:iworkslab/providers/cart.dart';
import 'package:iworkslab/providers/orders.dart';
import 'package:iworkslab/screens/Welcome/welcome_screen.dart';
import 'package:iworkslab/screens/cart_screen.dart';
import 'package:iworkslab/screens/order_screen.dart';
import 'package:iworkslab/screens/products_overview_screen.dart';
import 'package:iworkslab/screens/product_detail_screen.dart';
import 'package:provider/provider.dart';
import './providers/products.dart';
import 'screens/edit_product_screen.dart';
import 'screens/user_products_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Products(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => Orders(),
        ),
      ],
      child: MaterialApp(
          title: 'iWorksLab',
          theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Color(0xFF183940),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: kPrimaryLightColor,
            iconColor: kPrimaryColor,
            prefixIconColor: kPrimaryColor,
            contentPadding: EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              borderSide: BorderSide.none,
            ),
          )),
          home: WelcomeScreen(),
          routes: {
            ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            CartScreen.routeName: (ctx) => CartScreen(),
            OrdersScreen.routeName: (ctx) => OrdersScreen(),
            UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            EditProductScreen.routeName: (ctx) => EditProductScreen(),
          }),
    );
  }
}
