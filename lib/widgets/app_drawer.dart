// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iworkslab/screens/products_overview_screen.dart';
import 'package:iworkslab/screens/user_products_screen.dart';

import '../screens/order_screen.dart';

// ignore: use_key_in_widget_constructors
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF183940),
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Details',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            title: Text('Shop', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(ProductsOverviewScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.white,
            ),
            title: Text('Orders', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            title: Text(
              'Manage Products',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
